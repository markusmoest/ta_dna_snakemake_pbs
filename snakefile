include: "rules/common.smk"



# -----------------------------------------------


rule all:
    input:
        expand('raw/qc/fastqc/{sample}_{pair}_001_fastqc.{ext}', sample=sample_names, pair=['R1', 'R2'], ext=['html', 'zip']),
        expand('trm/{sample}_{pair}.fq.gz', sample=sample_names, pair=['R1','R2']), 
	    expand('bbmap/{sample}.{ext}', sample=sample_names, ext=['bam', 'bam.bai']),
	    'ref/genome/1/summary.txt',
	    expand('bbmap/{sample}.bam', sample=ids['sample']),
	    expand('bbmap/{sample}.done', sample=ids['sample']),
	    #expand('bbmap/{id}.{ext}', id=ids['sample'], ext=['bam', 'bam.bai']),



# -----------------------------------------------


include: "rules/hts.smk"
include: "rules/vars.smk"




