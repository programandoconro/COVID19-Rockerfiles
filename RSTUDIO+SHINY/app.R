library(ggplot2)
library(plotly)
library(dplyr)
library(shiny)
library(shinydashboard)

covid_19 <- read.csv('covid_19_data.csv')
str(covid_19)
summary(covid_19)
plot(covid_19[,c('Confirmed','Deaths','Recovered')])


Spain <- filter(covid_19, covid_19$Country.Region=='Spain')

topCountries <- filter(covid_19,covid_19$Deaths>500)

plot(x=as.factor(topCountries$Country.Region),y=topCountries$Deaths)

df <- covid_19

showTopCountries <- function(r = 500, var = 'Deaths'){

f <- filter(df,df$Deaths>r)

return (
  
  plot(as.factor(droplevels(f$Country.Region)),f[,var])

)
}

showTopCountries(100, 'Deaths')












