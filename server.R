#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$txt <- renderText({
         paste("You chose", input$rb)
       })
  
  output$docu <- renderText({
        paste("In this shiny app, the data in mtcars dataset is displayed in graphical form. 
              Mtcars data set has 11 variables and 32 observations each. The user can view each variable 
              as a histogram by clicking on the choice of radio button. Please note, use google chrome to 
              view the app")
  })
   
  output$distPlot <- renderPlot({
    
    x <- mtcars[ ,input$rb]

    hist(x, main= paste("Histogram of ", input$rb))
  })
  
})
