tfl_config_path=$1
ckpt_path=$2
eval_split_name=$3
eval_path=/nfs/data3/shuaicong/FlashVTG/ovis_internvideo2/ovis_val_release_V1.jsonl
echo ${ckpt_path}
echo ${eval_split_name}
echo ${eval_path}
PYTHONPATH=$PYTHONPATH:. python FlashVTG/inference.py \
${tfl_config_path} \
--resume ${ckpt_path} \
--eval_split_name ${eval_split_name} \
--eval_path ${eval_path} \
${@:4}
