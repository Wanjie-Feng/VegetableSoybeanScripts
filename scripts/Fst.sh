#!/usr/bin/sh

# 滑窗分析Fst
vcftools \
	--gzvcf ALL_Chr_SNP.renameSample.vcf.gz \
	--max-missing 0.8 \
	--maf 0.05 --max-maf 0.95 \
	--min-alleles 2 --max-alleles 2 \
	--minGQ 10 --minQ 30 \
	--remove-indels \
	--chr Chr01 --chr Chr02 --chr Chr03 --chr Chr04 --chr Chr05 --chr Chr06 --chr Chr07 --chr Chr08 --chr Chr09 --chr Chr10 \
	--chr Chr11 --chr Chr12 --chr Chr13 --chr Chr14 --chr Chr15 --chr Chr16 --chr Chr17 --chr Chr18 --chr Chr19 --chr Chr20 \
	--recode --recode-INFO-all \
	--out test

pigz test.recode.vcf

vcftools \
    --gzvcf test.recode.vcf.gz \
    --weir-fst-pop groupList/pop1.txt --weir-fst-pop groupList/pop3.txt \
    --fst-window-size 100000 --fst-window-step 10000 \
    --out FstResult2/VegVSmax

vcftools \
    --gzvcf test.recode.vcf.gz \
    --weir-fst-pop groupList/pop3.txt --weir-fst-pop groupList/pop4.txt \
    --fst-window-size 100000 --fst-window-step 10000 \
    --out FstResult2/maxVSsoja
