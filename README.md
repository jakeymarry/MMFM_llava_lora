## Model
llava1.5 13B
## Training Method
Lora Finetune
## Implementation
We use the llava model: git clone https://github.com/haotian-liu/LLaVA
Use the same data format provided by the competition https://github.com/jmiemirza/MMFM-Challenge?tab=readme-ov-file#baselines; place the data under **playground/data**
Modify the corresponding file path and weight path in the **scripts/v1_5/finetune_lora.sh**
We train the model using the provided LLaVA model (https://github.com/haotian-liu/LLaVA) as the foundation, utilizing the **bash run.sh** command which we provided.
## Results 
| Dataset           | Score | 
|-------------------|-------|
| MMMU              |       |
| iconqa_fill      | 46.0  |
| funsd             | 83.5  |
| iconqa_choose | 52.5  |
| wildreceipt       | 88.0  |
| textbookqa     | 61.5  |
| tabfact           | 62.0  |
| Overall           | 65.6  |

| Dataset           | Score |
|-------------------|-------|
| docvqa           | 36.0  |
| infographicvqa | 27.0  |
| websrc            | 34.5  |
| wtq                | 22.0  |
| Overall           | 29.9  |
## The model weights link:
https://www.alipan.com/s/dDEqRaQRAdC
