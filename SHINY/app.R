source('kaggle.R')

library(shiny)

ui <- fluidPage(
  
  titlePanel("Coronavirus data"),
  
  sidebarLayout(
    sidebarPanel(
      
    ),
    
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    
    plot(df_covid)
  })
}

shinyApp(ui = ui, server = server)
