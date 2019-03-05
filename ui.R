#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny) 

shinyUI(navbarPage("Air Quality",
                   
                   tabPanel("App", fluidPage(
                     
                     # Application title
                     titlePanel("New York Air Quality Measurements "),
                     
                     # Sidebar with controls to select the variable from airquality data set.
                     sidebarLayout(
                       sidebarPanel(
                         selectInput("var", "Choose Variable:", 
                                     choices = c("Ozone", "Solar Radiation", "Wind", "Temperature")),
                         br(),
                         sliderInput("bins", "Number of bins:",
                                     min = 1,
                                     max = 50,
                                     value = 30),
                         br()
                         
                       ),
                       
                       
                       mainPanel(
                          plotOutput("plot")
                         )
                       )
                     )
                   ))
)