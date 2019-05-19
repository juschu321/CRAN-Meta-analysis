library(ctv)
library(cranlogs)
install.packages("TSdist")

# Alle Psycho-Pakete
psy_packages <- ctv::available.views()[[30]]$packagelist$name

# Alle Download-Statistiken der ausgewählten Pakete seit 01.01.1999
d <-  cran_downloads(
  package = psy_packages, 
  from    = as.Date("1999-01-01"), 
  to      = Sys.Date()-1
)

# Export der Daten in eine CSV-Datei
write.csv(d, "mydata.csv", row.names = FALSE)
