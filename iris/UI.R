library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel("Comparison of the Iris' Sepal and Petal"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      label = "Choose your option"
      
      radioButtons("xvar", 
                   label = h4("Sepal"), 
                   choices = list("Length" = 'Sepal.Length',
                                  "Width" = 'Sepal.Width'), 
                   selected = "Sepal.Length"),
  
      radioButtons("yvar", 
                   label = h4("Petal"), 
                   choices = list("Length" = 'Petal.Length',
                                  "Width" = 'Petal.Width'), 
                   selected = "Petal.Length")
    ),
    
    mainPanel(
      plotlyOutput('scatter')
    )
  )
))