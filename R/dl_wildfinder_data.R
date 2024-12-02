#WILDFINDER
## Destination path ---- 
path <- here::here("data", "wildfinder")

## Create destination directory ----
dir.create(path, showWarnings = FALSE, recursive = TRUE)
filenames<-c("wildfinder-ecoregions_list.csv","wildfinder-ecoregions_species.csv","wildfinder-mammals_list.csv")
dl_wildfinder_data<-function(){
  for(i in filenames){
  ## File name ----
  filename <- i
  
  ## GitHub base URL ----
  base_url <- "https://github.com/rdatatoolbox/datarepo/tree/main/data/wildfinder/"
  ## Build full URL ----
  full_url <- paste0(base_url, filename)
  
  ## Build full path ----
  dest_file <- file.path(path, filename)
  
  ## Download file ----
  utils::download.file(url      = full_url,
                       destfile = dest_file,
                       mode     = "wb")
  }
}

