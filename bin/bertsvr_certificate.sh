#!/bin/bash
echo 'start BERT mobile svr...'
rm -rf /work/dl/BERT-train2deploy/bin/tmp*
export BERT_BASE_DIR=/work/dl/pretrained-model/chinese_L-12_H-768_A-12 #
export TRAINED_CLASSIFIER=/work/dl/BERT-train2deploy/output #
export EXP_NAME=certificate #
bert-base-serving-start -model_dir $TRAINED_CLASSIFIER/$EXP_NAME -bert_model_dir $BERT_BASE_DIR -model_pb_dir $TRAINED_CLASSIFIER/$EXP_NAME -mode NER -max_seq_len 128 -http_port 8091 -port 5575 -port_out 5576 -device_map 1