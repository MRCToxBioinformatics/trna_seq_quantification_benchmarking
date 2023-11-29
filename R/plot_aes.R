# Define the desired order for plotting purposes for the tally methods, tRNA-Seq methods, quantification levels, aligners and species.

tally_methods_rename <- c('Random',
                          'Fractional',
                          'Unique',
                          'MAPQ > 10',
                          'Decision',
                          'Salmon',
                          'Mimseq')

names(tally_methods_rename) <- c('random_single',
                                 'fractional',
                                 'no_multi',
                                 'mapq10',
                                 'decision',
                                 'salmon',
                                 'mimseq')


rename_method <- function(method){
  method <- match.arg(method, choices = names(tally_methods_rename))
  return(tally_methods_rename[[method]])
}


levels_rename <- c('Anticodon', 'Mimseq isodecoder', 'Transcript ID', 'Gene locus ID')

names(levels_rename) <- c('anticodon', 'mimseq_isodecoder', 'isodecoder', 'individual')

rename_level <- function(level){
  level <- match.arg(level, choices = names(levels_rename))
  return(levels_rename[[level]])
}

quant_rename <- c('Bowtie2', 'mimseq (GSNAP)', 'SHRiMP')

names(quant_rename) <- c('bowtie2', 'mimseq', 'shrimp')

rename_quant <- function(quant){
  quant <- match.arg(quant, choices = names(quant_rename))
  return(quant_rename[[quant]])
}

trna_method_order <- c('quantMtRNAseq',  'mimtRNAseq', 'YAMATseq', 'ARMseq', 'DMtRNAseq', 'ALLtRNAseq')
trna_method_rename <- c('QuantM-tRNA-seq', 'mim-tRNAseq', 'YAMAT-seq', 'ARM-seq', 'DM-tRNA-seq', 'ALL-tRNAseq')
names(trna_method_rename) <- trna_method_order


rename_trna_method<- function(trna_method){
  trna_method <- match.arg(trna_method, choices = names(trna_method_rename))
  return(trna_method_rename[[trna_method]])
}

species_levels <- c('Mus musculus', 'Homo sapiens')
