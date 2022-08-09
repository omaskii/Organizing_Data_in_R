#organise your data
install.packages("tidyverse")
library(tidyverse)

#using the penguins data
data("penguins")

#SORTING

penguins %>% arrange(bill_length_mm) #sorts the data by bill lengths in ascending order
penguins %>% arrange(-bill_length_mm) #sorts the data by bill lengths in descending order

penguins2 <- penguins %>% arrange(-bill_length_mm) # to save the new sorted data
view(penguins2)

#GROUP

penguins %>% group_by(island) %>% drop_na()%>% summarize(mean_bill_length_mm = mean(bill_length_mm))
#the above code groupsthe data by mean bill length

penguins %>% group_by(island) %>% drop_na()%>% summarize(max_bill_length_mm = max(bill_length_mm))
#This gives the maximum bill length

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

#FILTER 
penguins %>% filter(species =="Adelie") #returns data only relating to Adelie penguins

