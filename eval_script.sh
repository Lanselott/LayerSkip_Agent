# tasks: 任务名
# limit: 测试集样本数量，不填写默认全量测试
# generation_strategy: autoregressive\self_speculative 默认推理\论文中的方法
# exit_layer: draft model的层数
# num_speculations: 生成的草稿token数量

torchrun --master_port 29502 eval.py --model facebook/layerskip-llama2-7B \
    --tasks gsm8k \
    --limit 20 \
    --generation_strategy autoregressive \
    --exit_layer -1 \
    --output_dir ./logs

#torchrun --master_port 29501 eval.py --model facebook/layerskip-llama2-7B \
#    --tasks gsm8k \
#    --limit 20 \
#    --generation_strategy self_speculative \
#    --exit_layer 8 \
#    --num_speculations 6 \
#    --output_dir ./logs