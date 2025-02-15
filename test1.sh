torchrun --nproc_per_node=4 fine-tune.py  \
        --model_name_or_path /home/chang/t9/stock-models/llama-2-ko-7b \
        --bf16 True \
        --output_dir ~/t9/longlora/checkpoints       \
        --cache_dir ~/t9/longlora/caches \
        --model_max_length 8192 \
        --use_flash_attn True \
        --low_rank_training True \
        --num_train_epochs 1  \
        --per_device_train_batch_size 2     \
        --per_device_eval_batch_size 2     \
        --gradient_accumulation_steps 64     \
        --evaluation_strategy "no"     \
        --save_strategy "steps"     \
        --save_steps 20     \
        --save_total_limit 2     \
        --learning_rate 2e-5     \
        --weight_decay 0.0     \
        --warmup_steps 20     \
        --lr_scheduler_type "constant_with_warmup"     \
        --logging_steps 1     \
        --deepspeed "ds_configs/stage3.json" \
        --tf32 True \
        --max_steps 1000 \
        --model_type llama-2 \
        --report_to "tensorboard"