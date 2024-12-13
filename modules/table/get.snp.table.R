
highlight = NA
if( nrow(suredata) != 0 ){
  SNP.info = suredata
  if(!is.na(pos)){
    # highlight the pos
    highlight = which(SNP.info$POS == pos)
  }
  # colnames(SNP.info) <- c("Chromosome", "Position in human hg38",
  # "Reference allele", "Alternate allele",
  # "rsID", "Population allele frequency gnomAD 3.1.2",
  #  "Genotype in SuRE57", "Genotype in SuRE59",
  # "Genotype in SuRE67", "Genotype in SuRE68", "Genotype in SuRE86",
  # "Alternate allele coverage", "Reference allele coverage",
  # "Reference allele mean expression", "Alternate allele mean expression",
  # "p-value")
  
  colnames(SNP.info) <- c("Chromosome", "Position in human hg38",
                          "Reference allele", "Alternate allele",
                          "rsID", "Population allele frequency gnomAD 3.1.2", 
                          "SuREX38","SuREX57", "SuREX59",
                          "SuREX67", "SuREX68", 
                          "SuREX86", "Alternate allele coverage", 
                          "Reference allele coverage", "Reference allele mean expression", 
                          "Alternate allele mean expression", "p-value", "Description")
  
  message(paste(format(Sys.time(), "%d/%m/%Y %H:%M:%S"), ":", "SuRE Table : Functionally assessed variants in the region of interest printed in tabular format.  ✅"))
} else {
   message(paste(format(Sys.time(), "%d/%m/%Y %H:%M:%S"), ":", "SuRE Table : No functionally assessed variants in the region of interest."))
}

