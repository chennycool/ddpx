library(shiny)

shinyUI(
  pageWithSidebar(
    ##Project title
    headerPanel("Body Mass Index, BMI"),
    ##Input your height and weight
    sidebarPanel(
      numericInput('height', 'Height (m)', 1.70, 
                   min = 1.20, max = 2.20, step = 0.01),
      numericInput('weight', 'Weight (kg)', 65, 
                   min = 30, max = 200, step = 1),
      submitButton('Submit')
    ),
    ##Output will show your BMI 
    ##and indicate the best range of your weight
    ##based on your height
    mainPanel(
      h3('Results of BMI'),
      h4('Your Height (m)'),
      verbatimTextOutput("inputHeight"),
      h4('Your Weight (kg)'),
      verbatimTextOutput('inputWeight'),
      h4('Your BMI is '),
      verbatimTextOutput("calculatedBMI"),
      h4('You best weight (kg) is between '),
      verbatimTextOutput("goodBMI")
    )
  )
)