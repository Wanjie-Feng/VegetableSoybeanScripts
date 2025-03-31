#!/usr/bin/sh

# Veg
vcftools --gzvcf test.recode.vcf.gz  \
    --keep groupList/pop1.txt  \
    --window-pi 100000  --window-pi-step 10000 \
    --out FstResult2/Veg

# max
vcftools --gzvcf test.recode.vcf.gz  \
    --keep groupList/pop2.txt  \
    --window-pi 100000  --window-pi-step 10000 \
    --out FstResult2/max_pop2

vcftools --gzvcf test.recode.vcf.gz  \
    --keep groupList/pop3.txt  \
    --window-pi 100000  --window-pi-step 10000 \
    --out FstResult2/max_pop3



# soja
vcftools --gzvcf test.recode.vcf.gz  \
    --keep groupList/pop4.txt  \
    --window-pi 100000  --window-pi-step 10000 \
    --out FstResult2/soja
