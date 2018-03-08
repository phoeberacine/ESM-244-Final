##This is my playful code space where I've added a panel to my site, a tab panel on the left, and still have my map

##This next test is to add polygons to my map! Huzzah!

library(shiny)
library(tidyverse)
library(leaflet)
library(sf) #spatial data tool
library(shinydashboard)

##########Data loading code"##########
CruiseStationData <- read_csv("~/Desktop/ESM 244-Advanced Stats/Final/Final_244/CruiseStationData.csv")

ui <- fluidPage(
  navbarPage("My Application",
            tabPanel("Component 1"),
            tabPanel("Component 2"),
            tabPanel("Component 3")
  ),
  ##App Title
  titlePanel("Exploring primary production and the future of mussel farming in the Santa Barbara Channel"),
  
  navlistPanel(
    "Header A",
    tabPanel("Component 1"),
    tabPanel("Component 2"),
    "Header B",
    tabPanel("Component 3"),
    tabPanel("Component 4"),
    "-----",
    tabPanel("Component 5")
  ),
    
    # Main panel for displaying outputs
    mainPanel(
      
      ##Output
      leafletOutput("stationmap"),
      p()
    )
  )


# Define server logic required to draw an interactive map.
server <- function(input, output) {
  
  #in render we need uppercase l in leaflet and otherwise we need leaflet as lowercase. 

  output$stationmap <- renderLeaflet({
    
    leaflet(CruiseStationData) %>%
      addTiles() %>% 
      addMarkers(lng = ~longitude, lat = ~latitude, popup = ~Station) %>% 
      addMarkers( -119.737366, 34.391555, label = "Santa Barbara Mariculture") %>% #SBMariculture
      addMarkers(-119.423186, 34.292571, label = "Proposed Venture Shellfish Enterprise Site") #VSE
  })
}


# Run the application 
shinyApp(ui, server)