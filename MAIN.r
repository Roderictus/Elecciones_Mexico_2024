#library(AER) #libro de econometría con R
#library(PerformanceAnalytics) #para correlaciones del voto 
library(tidyverse)
#library(stargazer)    #tablas de regresión
#library(viridis)
#library(kableExtra)
#library(knitr)
library(sf)
#library(classInt)
library(dplyr)
library(rgdal)

install.packages("remotes") # if remotes isn't installed
remotes::install_github("paleolimbot/ggspatial")

library(ggspatial)



#.~
SC_19 <- read_sf("CdMx Shp/SECCION_ELECTORAL.shp")
table(SC_19$DISTRITO) # 22 Distritos

#[1] "Name"       "ENTIDAD"    "CVE_DEM_T"  "DEMARCACI"  "DISTRITO"   "DISTRITO_L"
#[7] "SECCIÓN"    "POB_DEMARC" "POB_X_SECC" "LN_31dic20" "name"       "geometry"


casillas2021 <- read.csv2("Elecciones México 2021/diputaciones2.csv", 
                          header = TRUE, 
                          sep = ",",
                          skip = 5)

#plot de la población para un mapa


#rango de valores para todo 0, 15,000


# función para hacer un mapa del distrito

mapa_distrito <- function(Base = SC_19, district_number = 6, col = POB_X_SECC) {
  Base %>% 
    filter(DISTRITO == district_number) %>%
    ggplot() + geom_sf(color = "white", aes(fill == col))
  
}



SC_19 %>% 
  filter(DISTRITO == 6) %>% 
  ggplot() + 
  annotation_map_tile("stamenwatercolor") +
  geom_sf(color = "white",aes(fill = POB_X_SECC ), alpha  = 0.8) +
  scale_fill_viridis_c() +
  ggtitle(label = "Población por Sección electoral CdMx 2024")



#Ciudad de México es entidad 9 


# Primer pl







SC_19 %>% ggplot + geom_sf() + facet_wrap(~ DISTRITO)

#Workflow de lectura de archivos shapefile
#Lectura de los Shapefile




# Trabajo en Bases 





##  Datos Electorales
### Ciudad de México, Secciones 
### Ciudad de México, Municipios
### Ciudad de México, Secciones Uninominales




##  Datos de Población