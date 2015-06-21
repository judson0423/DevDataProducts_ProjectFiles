
salaryIn10Years <- function(salary) 1.8*salary

library(shiny)
shinyServer(
        function(input, output) {
                output$inputValue1 <- renderPrint({input$salary})
                output$prediction <- renderPrint({salaryIn10Years(input$salary)})
        }
)