# to update R to the latest version: https://cloud.r-project.org/bin/linux/ubuntu/

install.packages(c("ggplot2","sf","rworldmap","tidyverse","magrittr",
                   "leaflet", "dplyr", "rvest", "xml2","rvest",
                   "maps","mapdata","RgoogleMaps","lubridate","rnaturalearth","dplyr","rnaturalearthdata","RColorBrewer","httr"))

libraries <- c("ggplot2","sf","rworldmap","tidyverse","magrittr",
               "leaflet", "dplyr", "rvest", "xml2","rvest",
               "maps","mapdata","RgoogleMaps","lubridate","rnaturalearth","dplyr","rnaturalearthdata","RColorBrewer","httr")
lapply(libraries, require, character.only = TRUE)

install.packages(c("tidyverse","ggplot2"))
