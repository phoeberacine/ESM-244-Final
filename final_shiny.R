library(shiny)
library(tidyverse)
library(leaflet)
library(sf) #spatial data tool
library(shinydashboard)

##########Data loading code"##########
CruiseStationData <- read_csv("~/Desktop/ESM 244-Advanced Stats/Final/Final_244/CruiseStationData.csv")

ui <- fluidPage(
  ##App Title
  titlePanel("Exploring primary production and the future of mussel farming in the Santa Barbara Channel"),

  ##Sidebar panel
  sidebarLayout(
  sidebarPanel("sidebar panel"),
 
   # Main panel for displaying outputs
  mainPanel(
  
  ##Output
    leafletOutput("stationmap"),
      p()
                              )
            )
      )

# Define server logic required to draw an interactive map.
server <- function(input, output) {
 
   #in render we need uppercase l in leaflet and otherwise we need leaflet as lowercase. 
 
   output$stationmap <- renderLeaflet({
     
     leaflet(CruiseStationData) %>%
       addTiles() %>% 
       addMarkers(lng = ~longitude, lat = ~latitude, popup = ~Station)
   })
}


  # Run the application 
  shinyApp(ui, server)
