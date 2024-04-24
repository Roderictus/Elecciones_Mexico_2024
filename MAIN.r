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
#.~
SC_19 <- read_sf("CdMx Shp/SECCION_ELECTORAL.shp")
table(SC_19$DISTRITO) # 22 Distritos




casillas2021 <- read.csv2("Elecciones México 2021/diputaciones2.csv", 
                          header = TRUE, 
                          sep = ",",
                          skip = 5)

#plot de la población para un mapa




ggplot(SC_19) + geom_sf()

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