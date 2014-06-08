library(shiny)

# Define UI for application that calculates the Body Mass Index
shinyUI(fluidPage(
  # Application title
  titlePanel("Body Mass Index Calculator"),
  p("Instructions:  To calculate your body mass index enter your height and weight in the left
     side panel windows.  There are three windows, one for your height in feet, one for your
     height in inches, and one for your weight in pounds.  When you 
    have your information entered, press the Calculate BMI button at the bottom.  The 
    calculator comes preset with a height of 5 foot 9 inches and a weight of 165 pounds."),
  br(),
  # Sidebar with a three text inputs
  sidebarLayout(position = "left",
    sidebarPanel(
      h2('Enter your physical data:'),
      h3('Height'),
      numericInput("hf", label = h4("feet"),max=7,min=2, value = 5),
      numericInput("hin", label = h4("inches"),max=12,min=0, value = 9),
      h3('Weight'),
#     This is some code that if I wanted to use a slider instead of text input 
#      sliderInput(inputId = "wlbs", label = h4("pounds"),
#                  min = 50, max = 350, value = 165)
      numericInput("wlbs", label = h4("pounds"),max=350,min=0, value = 165),
      submitButton('Calculate BMI')
    ),
    # Show the data entered and the calculated BMI
    mainPanel(
     # plotOutput("distPlot")
      h3('You entered the following information:'),
      h4(textOutput("heightsummary")),
      h4(textOutput("weightsummary")),
      br(),
      h3('Calculated Body Mass Index:'),
      h4(textOutput("bmi")),
      br(),
      h4('A table to evaluate your body fat:'),
      tableOutput("bmitable")
    )
  )
))