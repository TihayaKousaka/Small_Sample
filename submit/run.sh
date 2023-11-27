# 模型集成

GPU='0 1 2 3'

nvidia-smi

python final.py \
--batch 128 --datetime $(date +%Y_%m_%d_%H_%M_%S) --gpu ${GPU} \
--data_file testB.json --model_folder_path /root/autodl-tmp/CCF-BDCI-fewshot-classification-main/models --label 36 \
--model_dict \
"[
    {'name': '2023_11_18_14_02_03/best_3.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_18_14_02_03/best_2.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_18_14_02_03/best_1.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_18_16_57_23/best_1.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_18_16_57_23/best_2.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_18_16_57_23/best_3.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_20_12_11_25/best_3.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_20_12_11_25/best_2.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
    {'name': '2023_11_20_12_11_25/best_1.pt', 'model': 'model1', 'bert': 'nghuyong/ernie-3.0-base-zh',  'feature_layers': 4, 'dropout': 0.3, 'language': 'zh'},
]" \
--model_weight "[1,1,1,1,1,11,1,1]" --score --single --softmax
