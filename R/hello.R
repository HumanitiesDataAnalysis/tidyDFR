library(readr)
library(tidyverse)

#' Title
#'
#' @param zipfile A zipfile from JStor Data For Research
#' @param type 'unigrams', 'bigrams', 'metadata,' etc.
#' @param exdir The destination directory. Default "DFR_files" in the current working directory.
#'
#' @return a data_frame
#' @export
#'
read_DFR = function(zipfile,type = "wordcounts",exdir) {
  unzip(zipfile = zipfile, exdir = exdir, overwrite = F)
  citations = read_tsv(paste0(exdir,"/citations.tsv"))
  files = list.files(paste(exdir = exdir,type = type,sep="/"),recursive = T, full.names = T)
  data = data_frame(id = files) %>%
    group_by(id) %>%
    do(
      read_csv(.$id,col_types = "ci", col_names = c(type,"count"),skip = 1)
      )

  data = data %>%
    ungroup %>%
    mutate(id=gsub("_","/",gsub(".*(10.*).CSV","\\1",id)))

  names(data) = tolower(names(data))

  all_data = citations %>% inner_join(data)
  all_data
}
