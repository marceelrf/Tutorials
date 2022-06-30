
# Pacotes -----------------------------------------------------------------

library(tidyverse)
library(glue)


# Procedimento ------------------------------------------------------------

tratamento <- c("Ctrl","A","B","C")
tempo <- c(1,2,3,4,5)
experimentos <- c("DNA","RNA","Proteina")


tidyr::crossing(tratamento,tempo,experimentos) %>% 
  dplyr::mutate(Label = glue::glue("Droga: {tratamento} - {tempo}  dias - {experimentos}")) %>% 
  dplyr::select(Label) %>% 
  readr::write_csv(file = "Etiquetas com Glue/etiquetas.csv",col_names = F)
