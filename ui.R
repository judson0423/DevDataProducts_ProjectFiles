library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("Prediction of Salary in 10 Years"),
                
                sidebarPanel(
                        numericInput('salary', 'Current salary in $US', 35000, min=15000, max=400000, step=1000),
                        submitButton('Submit')
                        
                ),
                mainPanel(
                        h3('Salary Prediction'),
                        h4('You entered current salary of '),
                        verbatimTextOutput("inputValue1"),
                        h4(' '),
                        h4('Your salary in 10 years will be '),
                        verbatimTextOutput("prediction")
                )
        )
)