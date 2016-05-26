library(shiny)

 price<- function(price) price * 1.3

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$price})
    output$prediction <- renderPrint({price(input$price)})
  }
)
