library(shiny)

shinyServer(
  function(input, output) {
    ##calculate the BMI based on input
    BMI<- reactive({input$weight / (input$height ^2)})
    ##indicate the best range of BMI
    lowBMI<- reactive({(input$height ^2) * 18.5})
    highBMI<- reactive({(input$height ^2) * 25})
    ##output factors
    output$inputHeight <- renderPrint({input$height})
    output$inputWeight <- renderPrint({input$weight})
    output$calculatedBMI <- renderPrint({BMI()})
    output$goodBMI <- renderPrint ({c(lowBMI(), highBMI())})
    
  }
)