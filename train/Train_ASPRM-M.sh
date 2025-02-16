CUDA_VISIBLE_DEVICES=0,1,2,3 deepspeed --module openrlhf.cli.train_prm \
   --save_path ./checkpoint/asprm_m_bz256_lr1e6_epo1_no_con \
   --save_steps 1000 \
   --logging_steps 10 \
   --eval_steps 100 \
   --train_batch_size 256 \
   --micro_train_batch_size 4 \
   --pretrain {path_to_mistral_V1} \
   --bf16 \
   --max_epochs 1 \
   --max_len 8192 \
   --zero_stage 2 \
   --learning_rate 1e-6 \
   --dataset {path_to_asprm-m_train_dataset} \
   --input_key query \
   --label_key response \
   --flash_attn \
   --packing_samples \
   --wandb_group prm \
   --placeholder_token " ки" \
