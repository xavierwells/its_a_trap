# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

pathname = "~/GitHub/its_a_trap"
source(paste(pathname, "/srcA.R", sep = ""))
options(browser = "C:/Program Files/Mozilla Firefox/firefox.exe")

ui = htmlTemplate(paste(pathname, "/getLocation.html", sep=""))

# # Define UI for application that draws a histogram
# ui <- fluidPage(
#     titlePanel("Fuck"),
#     includeHTML(paste(pathname, "/getLocation.html", sep=""))
# )

# Define server logic required to draw a histogram
server <- function(input, output) {
    
}

# Run the application 
shinyApp(ui = ui, server = server)
