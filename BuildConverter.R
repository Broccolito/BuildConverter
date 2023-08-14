if(!require("dplyr")){
  install.packages("dplyr")
  library("dplyr")
}

if(!require("rtracklayer")){
  BiocManager::install("rtracklayer")
  library("rtracklayer")
}

chainObject_tohg19 = import.chain("hg38ToHg19.over.chain")
chainObject_tohg38 = import.chain("hg19ToHg38.over.chain")

build_convert = function(
  
  chromosome = 15,
  pos = 48481729,
  action = c("HG38TOHG19", "HG19TOHG38")){
  
  grObject = GRanges(seqnames = paste0("chr", chromosome), 
                     ranges = IRanges(start=pos, end=pos))
  
  
  
  if(action == "HG38TOHG19"){
    results = as.data.frame(liftOver(grObject, chainObject_tohg19))
    results = paste0(results$seqnames, ":", results$start)
  }else if(action == "HG19TOHG38"){
    results = as.data.frame(liftOver(grObject, chainObject_tohg38))
    results = paste0(results$seqnames, ":", results$start)
  }else{
    results = NA
  }
  
  return(results)
  
}





