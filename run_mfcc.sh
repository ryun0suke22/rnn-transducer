#!/bin/bash
. ./path.sh

set -e

datadir=$1
mfccdir=$2
logdir=$3
conf=$4
nj=$5

cmd="utils/run.pl"

utils/utt2spk_to_spk2utt.pl $datadir/utt2spk > $datadir/spk2utt
utils/fix_data_dir.sh $datadir
steps/make_mfcc.sh --write-utt2num-frames true --mfcc-config $conf --nj $nj --cmd $cmd $datadir $logdir $mfccdir
steps/compute_cmvn_stats.sh $datadir $logdir/cmvnlog $mfccdir
utils/fix_data_dir.sh $datadir

