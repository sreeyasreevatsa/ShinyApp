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
        paste("mtcars dataset histograms can be seen by choosing 
                      appropriate column. The mtcars dataframe has 11 variables (choices listed below) with 
                     32 observations each")
  })
   
  output$distPlot <- renderPlot({
    
    var <- input$rb
    # generate bins based on input$bins from ui.R
    # x    <- faithful[, 2] 
    x <- mtcars[ ,input$rb]
    # bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    # hist(x, breaks = bins, col = 'darkgray', border = 'white')
    hist(x, main= paste("Histogram of ", input$rb))
  })
  
})
