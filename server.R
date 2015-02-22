library(shiny)
library(datasets)

library(shiny) 

tArea<-function(base,height) {(base*height)/2}


shinyServer(
  function(input, output) {
    
    output$inputbasevalue <- renderPrint({input$base})
    output$inputheightvalue <- renderPrint({input$height})
    output$answer <- renderPrint({tArea(input$base,input$height)})
    output$answer1 <- renderPrint({input$Input1})
    } 
)