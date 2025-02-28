#!/bin/bash

# hifiasm 
~/software/hifiasm \
    -o test.asm \
    -t 150 \
    --ul ../00data/ONT_pass2-1.fq.gz \
    --h1 ../00data/hic/test_R1.fastp.fq.gz \
    --h2 ../00data/hic/test_R2.fastp.fq.gz ../00data/Hifi_pass.fq.gz

# nextdenovo
nextDenovo run.cfg
##run.cfg file:
# [General]
# job_type = local
# job_prefix = nextDenovo
# task = all # 'all', 'correct', 'assemble'
# rewrite = yes # yes/no
# deltmp = yes
# rerun = 3
# parallel_jobs = 30
# input_type = raw
# read_type = ont
# input_fofn = input.fofn
# workdir = 01_rundir

# [correct_option]
# read_cutoff = 1k
# genome_size = 1g
# pa_correction = 3
# sort_options = -m 10g -t 15
# minimap2_options_raw =  -t 8
# correction_options = -p 15

# [assemble_option]
# minimap2_options_cns =  -t 8
# nextgraph_options = -a 1