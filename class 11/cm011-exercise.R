library(tidyverse)
library(gapminder)

gapminder  
write_csv(gapminder, './gapinder.csv')

view(ggapminder)
     
# calculate mean life Exp per continent
gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_lifeExp = mean(lifeExp))

## on windows it's .\gapminder_sum.csv? 
view(gapminder_sum)
# write_csv(gapminder_sum, './gapminder_sum.csv')
write_csv(gapminder_sum, here::here...????)

gapminder_sum %>% 
  ggplot(aes(x = continent, y = ave_lifeExp)) +
           geom_point() +
          theme_bw()

gapminder_csv <- read_csv('./gapminder_sum.csv')

view(gapminder_csv)


# But this doesn't actually detach any packages you've loaded. 
ls()
list=ls()
remove(list=ls())
ls()

read_csv('./test/tes/te/t/gapminder_sum.csv')


## another way using here -- platform agnostic (ie ok on windows or mac etc)

read_csv(here::here("test", "tes","te","t","gapminder_sum.csv"))




#### demos for importing data!!!
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"


download.file(url = data_url, 
              destfile = paste('./datasets/', file_name))

## Task: change above to use the here:: here package

download.file(url = data_url, 
              destfile = here::here("test", "greatestGivers.xls"))


## trim_ws = trims any white spaces before and after any characters or numbers
philanthropists <- read_excel(here::here("test", file_name), trim_ws = TRUE)

View(philanthropists)

head(philanthropists)

## he's going too fast and none of my code works at this point lol



############### Ooooooooooooook starting on a new dataset ######################3
library(here)

mri_file = here("datasets", "Firas-MRI.xlsx")

mri <- read_excel(mri_file)
View(mri)

mri <- read_excel(mri_file, range = "A1:L12")
View(mri)

mri <- mri[, -10]


library(tidyverse)
library(readxl)

mri <- mri %>% 
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'slice_no', 
               values_to = 'value')

