#!/bin/bash

export TF_CONFIG='{
    "cluster": {
          "worker": ["192.168.20.51:1111", "192.168.20.52.1112"]
            },
              "task": {"type": "worker", "index": 1}
}'

export PYTHONPATH=/home/zhouhaiy/tensorflow/train-model/models:${PYTHONPATH}
rm -rf /tmp/cifar10_*
python3 cifar10_main.py --data_dir=${PWD}/cifar_data
