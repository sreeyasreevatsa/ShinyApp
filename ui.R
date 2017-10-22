#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("mtcars from R"),
  textOutput("docu"),
  verbatimTextOutput("mtcars dataset histograms can be seen by choosing 
                      appropriate column. The mtcars dataframe has 11 variables (chices listed below) with 
                      32 observations each"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      radioButtons("rb", "Choose one of the 11 variables from mtcars dataset:",
                   choiceNames = list(
                     #icon("calendar"),
                     #HTML("<p style='color:red;'>Red Text</p>"),
                     "mpg", "cyl", "disp","hp", "drat", "wt","qsec", "vs", "am", "gear", "carb"
                   ),
                   choiceValues = list(
                     "mpg", "cyl", "disp","hp", "drat", "wt","qsec", "vs", "am", "gear", "carb"
                   )),
      textOutput("txt")
    ),
    
    # mtcars plot
    mainPanel(
      verbatimTextOutput("mtcars dataset histograms can be seen by choosing 
                      appropriate column. The mtcars dataframe has 11 variables (chices listed below) with 
                         32 observations each"),
       plotOutput("distPlot")
    )
  )
))
