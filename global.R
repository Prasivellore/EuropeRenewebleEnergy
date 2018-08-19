library(shiny)
library(shinydashboard)
library(ggplot2)
library(data.table)
library(leaflet)
library(dplyr)
library(plotly)
library(DT)
library(leaflet.extras)
library(rMaps)
library(xts)
library(highcharter)
library(shinythemes)
library(markdown)
library(anytime)
library(magrittr)

require(devtools)
install_github('ramnathv/rCharts@dev')
install_github('ramnathv/rMaps')

#thechi=fread("~/Documents/Bootcamp/Lectures/R/SHINY/thechi.csv", stringsAsFactors=F)
#thechi = readRDS("thechi.rds")
#Ireland = readRDS("Ireland.rds")
#write.csv(thechitibble,"crime.csv")

data <- readRDS("Albania.rds")
data1 <- readRDS("Albania.rds")


#count by charge type
count_by_charge = data %>%
  group_by(tag) %>%
  summarise(Count=n())


choice1=unique(count_by_charge$tag)

groupColors=colorFactor(c('#009DDC','#62BB47','#4765bb','#ffe105','#05ffee','#2e05ff'),
                        domain = c('generator','pole','portal','switch','tower','transformer'
                        ))

