include: "rules/common.smk"



# -----------------------------------------------


rule all:
    input:
        expand('raw/qc/fastqc/{sample23}_{pair}_001_fastqc.{ext}', sample23=sample_names, pair=['R1', 'R2'], ext=['html', 'zip']),
        expand('trm/{sample23}_{pair}.fq.gz', sample23=sample_names, pair=['R1','R2']), 
	    expand('bbmap/{sample23}.{ext}', sample23=sample_names, ext=['bam', 'bam.bai']),
	    'ref/genome/1/summary.txt',
	    #expand('bbmap/all/{indFile}.bam', indFile=ids['sample']),
	    expand('bbmap/all/{idNest}.{ext}', idNest=ids.id_nest, ext=['bam', 'bam.bai']),



# -----------------------------------------------


#include: "rules/hts.smk"
include: "rules/vars.smk"




