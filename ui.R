library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Finding the Area of a Triangle"),
    
    sidebarPanel(
      numericInput('base','Fill in the Base','' ) ,
      numericInput('height', 'Fill in the Height','' , min = 0.2, max = 3, step = 0.01),
      selectInput("Input1", "Select Unit:",'', choices = c('','Centimeter'='Centimeter','Inches'='Inches','Meter'='Meter')),
      submitButton('Submit')
    ), 
    mainPanel(
      p('To find the area of a triangle, multiply the base by the height, and then divide by 2.'),
      p('The division by 2 comes from the fact that a parallelogram can be divided into 2 triangles.'),
      p('For example, in the diagram to the left, the area of each triangle is equal to one-half the area of the parallelogram(source:http://www.mathgoodies.com)'),
  
      h4('The values entered by you:'), 
      p('Base:'), verbatimTextOutput("inputbasevalue"),
      p('Height:'), verbatimTextOutput("inputheightvalue"),
      h4('Area is:'),
      verbatimTextOutput("answer"),
      p('Unit:'), verbatimTextOutput("answer1")
         
      
    )
    
  )   
)