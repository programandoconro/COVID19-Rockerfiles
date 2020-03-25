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
  
  plot(as.factor(droplevels(f$Country.Region)),f[,var],ylab=var, xlab='Countries')

)
}

showTopCountries(100, 'Recovered')

ui <- fluidPage(
  sidebarLayout(
    
    sidebarPanel(
      
      sliderInput(inputId = "alpha",
                  label = "Amount of People:",
                  min = 1,
                  max = 4000,
                  value = 50),
      
      selectInput("var","Variable",c("Deaths","Recovered","Confirmed")),
      
    ),
    
    mainPanel(
      
      plotOutput(outputId = "boxPlot")
      
    )
  )
)

server <- function(input, output) {
  
  output$boxPlot <- renderPlot({
    
    showTopCountries(input$alpha, input$var)
   
  })
  
}

shinyApp(ui, server)
