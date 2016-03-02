library(rsconnect)

library(shiny)
data(iris)

shinyServer(function(input, output) {

  output$scatter <- renderPlotly({
    
    plot_ly(iris, 
            x = iris[, input$xvar],
            y = iris[, input$yvar],
            mode = "markers",
            marker = list(
            size = 6,
            color = "DeepSkyBlue"
            )
    ) %>% 
      
      layout(
        title = paste("Size Comparison of Iris", input$species),
        xaxis = list(range = c(0, 10), 
                     title = paste(input$xvar)),
        yaxis = list(range = c(0, 10),
                     title = paste(input$yvar))
      ) %>%
      
      return()
  })
})