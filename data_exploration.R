library(readr)
library(tidyr)
my_data <- read_csv("mydata.csv", col_types = cols(date = col_date(format = "%Y-%m-%d")))
View(my_data)

#check the data structure
str(my_data)


data_frame <- as.data.frame(my_data)
my_data_spread <- tidyr::spread(data=my_data, key = package, value = count)



View(my_data_spread)
