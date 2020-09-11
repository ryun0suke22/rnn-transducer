#!/bin/bash

dir=egs/aishell
bash run_mfcc.sh $dir/data/train $dir/data/mfcc_train $dir/data/log_train conf/mfcc.conf 32

bash run_mfcc.sh $dir/data/dev $dir/data/mfcc_dev $dir/data/log_dev conf/mfcc.conf 32
