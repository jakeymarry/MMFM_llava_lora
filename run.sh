bash scripts/v1_5/finetune_lora.sh

python model_vqa.py --model-path ./checkpoints/LLaVA-13B-v0 --question-file playground/data/coco2014_val_qa_eval/qa90_questions.jsonl --image-folder  /path/to/coco2014_val --answers-file  /path/to/answer-file-our.jsonl

# /media/php/code/LLaVA/checkpoints/llava-v1.5-13b
# /media/php/code/LLaVA/checkpoints/vicuna-13b-v1.5
python model_vqa.py --model-path /media/php/code/LLaVA/checkpoints/vicuna-13b-v1.5 --question-file /media/php/code/LLaVA/playground/data/merged_data/converted_output_test.json --image-folder  /media/php/code/LLaVA/playground/ --answers-file  /media/php/code/LLaVA/playground/data/results/output_10_datasets.json

python model_vqa.py --model-path /media/php/code/LLaVA/checkpoints/vicuna-13b-v1.5 --question-file /media/php/code/LLaVA/playground/data/merged_data/converted_output_test.json --image-folder  /media/php/code/LLaVA/playground/ --answers-file  /media/php/code/LLaVA/playground/data/results/output_10_datasets.json


python scripts/merge_lora_weights.py  --model-path /media/php/code/LLaVA/checkpoints/train/llava-v1.5-13b-lora  --model-base /media/php/code/LLaVA/checkpoints/vicuna-13b-v1.5  --save-model-path /media/php/code/LLaVA/checkpoints/llava_lora

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5 python eval_llava.py  --output_path inference_results/output_4_datasets.json  --data_path /media/php/code/LLaVA/playground/data/processed_data --model_path /media/php/code/LLaVA/checkpoints/llava_lora  --test_file_name /media/php/code/LLaVA/playground/data/merged_data/converted_output_test.json  --sub_ds_list docvqa,infographicvqa,websrc,wtq


CUDA_VISIBLE_DEVICES=0,1,2,3,4,5 python eval_llava.py  --output_path inference_results/output_6_datasets.json  --data_path /media/php/code/LLaVA/playground/data/processed_data --model_path /media/php/code/LLaVA/checkpoints/llava_lora  --test_file_name /media/php/code/LLaVA/playground/data/merged_data/converted_output_test.json  --sub_ds_list iconqa_fill_in_blank,funsd,iconqa_choose_txt,wildreceipt,textbookqa,tabfact