library(shiny)
library(leaflet)
library(DT)
library(data.table)
library(shinyWidgets)
library(dplyr)
library(plotly)
library(lubridate)
library(shinycssloaders)
library(ggplot2)
library(shinydashboard)
library(webshot)
library(shinyWidgets)

port <- Sys.getenv('PORT')

shiny::runApp(
  appDir = getwd(),
  host = '0.0.0.0',
  port = as.numeric(port)
)
