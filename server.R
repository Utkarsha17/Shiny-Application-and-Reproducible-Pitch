#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data(airquality)


shinyServer(function(input, output) {
  data <- reactive({
    switch(input$var,
           "Ozone" = airquality$Ozone,
           "Solar Radiation" = airquality$Solar.R,
           "Wind" = airquality$Wind,
           "Temperature" = airquality$Temp,
           airquality$Ozone)
  })
  output$plot <- renderPlot({
    var <- input$var
    bins <- seq(min(data(),na.rm = TRUE), max(data(), na.rm = TRUE), length.out = input$bins + 1)
    hist(data(),na.rm = TRUE,breaks = bins, xlab = var, col='yellow', main="")
  })
}
)