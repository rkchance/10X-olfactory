#!/bin/bash
#
#$ -cwd
#$ -V
#$ -j y
#$ -S /bin/bash
#$ -M diyadas@berkeley.edu,rchance@berkeley.edu
#$ -m beas
#

ncores=$1
NOW=$(date +"_%m%d%Y-%H%M%S")

#R_LIBS=/share/groups/diya-russell/rpack/3.5/ R --vanilla < tenx_3b_snn.R --args --expt regen --ncores $ncores --normalization "none,fq,ruv_k=2,no_bio,no_batch" --method scone > 'tenx_3b_snn'$NOW'.Rout'

R_LIBS=/share/groups/diya-russell/rpack/3.5/ R --vanilla < tenx_3b_snn.R --args --expt ob --ncores $ncores --normalization "none,fq,ruv_k=1,no_bio,batch" --method zinb > 'tenx_3b_snn'$NOW'.Rout'
