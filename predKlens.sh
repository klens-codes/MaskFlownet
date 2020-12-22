eval "$(conda shell.bash hook)"
conda activate /data2/opticalflow/rnd/envs/maskflownet_mxnet


python predict_new_data.py ./kout/DSC_0608_sub4.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/DSC_0608_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/DSC_0608_sub5.jpg -c $1
python predict_new_data.py ./kout/KLE_0030.jpg4.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_0030.jpg4.png --image_2 /data2/opticalflow/KLENS/images/KLE_0030.jpg5.png -c $1
python predict_new_data.py ./kout/KLE_0309_exp_sub4.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_0309_exp_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/KLE_0309_exp_sub5.jpg -c $1
python predict_new_data.py ./kout/KLE_0730_sub4.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_0730_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/KLE_0730_sub5.jpg -c $1
python predict_new_data.py ./kout/KLE_0747_sub4.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_0747_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/KLE_0747_sub5.jpg -c $1
python predict_new_data.py ./kout/KLE_1106.jpg4.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_1106.jpg4.png --image_2 /data2/opticalflow/KLENS/images/KLE_1106.jpg5.png -c $1
python predict_new_data.py ./kout/KLE_1113.jpg4.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_1113.jpg4.png --image_2 /data2/opticalflow/KLENS/images/KLE_1113.jpg5.png -c $1

python predict_new_data.py ./kout/KLE_1134.jpg4.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_1134.jpg4.png --image_2 /data2/opticalflow/KLENS/images/KLE_1134.jpg5.png -c $1

python predict_new_data.py ./kout/KLE_1167.jpg4_5.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_1167.jpg4.png --image_2 /data2/opticalflow/KLENS/images/KLE_1167.jpg5.png -c $1

python predict_new_data.py ./kout/KLE_1173.jpg4_5.png MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_1173.jpg4.png --image_2 /data2/opticalflow/KLENS/images/KLE_1173.jpg5.png -c $1

python predict_new_data.py ./kout/KLE_1702_sub3_4.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_1702_sub3.jpg --image_2 /data2/opticalflow/KLENS/images/KLE_1702_sub4.jpg -c $1

python predict_new_data.py ./kout/KLE_9797clean_sub4_5.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_9797clean_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/KLE_9797clean_sub5.jpg -c $1

python predict_new_data.py ./kout/KLE_9803clean_sub4_5.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/KLE_9803clean_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/KLE_9803clean_sub5.jpg -c $1

python predict_new_data.py ./kout/NKM_0063_sub4_5.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/NKM_0063_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/NKM_0063_sub5.jpg -c $1

python predict_new_data.py ./kout/NKM_0109_sub4_5.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/NKM_0109_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/NKM_0109_sub5.jpg -c $1

python predict_new_data.py ./kout/scene_1_sub4_5.jpg MaskFlownet.yaml --image_1 /data2/opticalflow/KLENS/images/scene_1_sub4.jpg --image_2 /data2/opticalflow/KLENS/images/scene_1_sub5.jpg -c $1

