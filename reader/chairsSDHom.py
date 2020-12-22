import os
import numpy as np
from functools import lru_cache
import struct
import glob

# ======== PLEASE MODIFY ========
chairsSDHom_root = r'/data2/opticalflow/datasets/ChairsSDHom_extended'

def list_data(path = None,):
	if path is None:
		path = chairsSDHom_root
	parts = ('train',  'val')
	dataset = dict()
	dataset['image_0'] = glob.glob(os.path.join(path,"train","*img_0.png"))
	dataset['image_0'].extend(glob.glob(os.path.join(path,"val", "*img_0.png")))
	dataset['image_1'] = glob.glob(os.path.join(path,"train","*img_1.png"))
	dataset['image_1'].extend(glob.glob(os.path.join(path,"val", "*img_1.png")))
	dataset['flow'] = glob.glob(os.path.join(path,"train","*.flo"))
	dataset['flow'].extend(glob.glob(os.path.join(path,"val","*.flo")))
	dataset['mask'] = glob.glob(os.path.join(path,"train","*occ_01.png"))
	dataset['mask'].extend(glob.glob(os.path.join(path,"val","*occ_01.png")))
	'''for part in parts:
		path_image = os.path.join(path, part, 'image_' + sub_type, camera)
		path_flow = os.path.join(path, part, 'flow', camera, orient)
		dirs_flow = os.listdir(path_flow)
		for dir_flow in dirs_flow:
			dataset['flow'].append(os.path.join(path_flow, dir_flow))
			dataset['image_0'].append(os.path.join(path_image, dir_flow.replace('flo', 'png')))
			ind = int(dir_flow[-11:-4])
			dataset['image_1'].append(os.path.join(path_image, dir_flow.replace('flo', 'png').replace('%07d' % ind, '%07d' % (ind + flow_ind))))
	'''
	return dataset

class Flo:
	def __init__(self, w, h):
		self.__floec1__ = float(202021.25)
		self.__floec2__ = int(w)
		self.__floec3__ = int(h)
		self.__floheader__ = struct.pack('fii', self.__floec1__, self.__floec2__, self.__floec3__)
		self.__floheaderlen__ = len(self.__floheader__)
		self.__flow__ = w
		self.__floh__ = h
		self.__floshape__ = [self.__floh__, self.__flow__, 2]

		if self.__floheader__[:4] != b'PIEH':
			raise Exception('Expect machine to be LE.')

	def load(self, file):
		with open(file, 'rb') as fp:
			if fp.read(self.__floheaderlen__) != self.__floheader__:
				raise Exception('Bad flow header: ' + file)
			result = np.ndarray(shape=self.__floshape__,
								dtype=np.float32,
								buffer=fp.read(),
								order='C')
			return result

	def save(self, arr, fname):
		with open(fname, 'wb') as fp:
			fp.write(self.__floheader__)
			fp.write(arr.astype(np.float32).tobytes())

@lru_cache(maxsize=None)
def load(fname):
	flo = Flo(512,384)
	if fname.endswith('flo'):
		return flo.load(fname)

if __name__ == '__main__':
	dataset = list_data()
