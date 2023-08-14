get_directory = function(){
  args <- commandArgs(trailingOnly = FALSE)
  file <- "--file="
  rstudio <- "RStudio"
  match <- grep(rstudio, args)
  if(length(match) > 0){
    return(dirname(rstudioapi::getSourceEditorContext()$path))
  }else{
    match <- grep(file, args)
    if (length(match) > 0) {
      return(dirname(normalizePath(sub(file, "", args[match]))))
    }else{
      return(dirname(normalizePath(sys.frames()[[1]]$ofile)))
    }
  }
}

setwd(get_directory())

source("BuildConverter.R")

### Make an excel file with the same format as "example_input.xlsx"
### Make sure all the positions mentioned are in HG19
### And source "Run.R" file

build_convert(chromosome = 15, pos = 48481729, action = "HG38TOHG19")

# chr15:48481729