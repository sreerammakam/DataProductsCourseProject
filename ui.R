library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Price appreciation prediction"),
  
    sidebarPanel(
      numericInput('price', 'Start Price $', 1, min = 50, max = 200, step = 50),
      submitButton('Enter')
    ),
    mainPanel(
        h3('Results of price appreciated by 30%'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4('Which resulted in a target price of '),
        verbatimTextOutput("prediction")
        
    )
  )
)

