library(shiny)
library(shinydashboard)

ui<- dashboardPage(
  dashboardHeader(title = "My Dashboard"),
  dashboardSidebar(),
  dashboardBody(
    box(plotOutput("correl"), width= 8),
    box(
      selectInput("features", "Model Selection :",
                  c("Sepal.Length", "Sepal.Width", "Petal.Length")), width = 4
    )
  )
)
server<-function(input, output){
  output$correl<- renderPlot({
    barplot(iris$Sepal.Length, iris[[input$features]],
         xlab = "sepal lenght", ylab = "Feature")
  })  
}


shinyApp(ui, server)


ui<- dashboardPage(
      dashboardHeader(),
      dashboardSidebar(),
      dashboardBody(
        box(plotOutput("correlation"), width = 7),
        box(plotOutput("value"), width = 7),
        box(
          selectInput("features", "Model Selection:",
                               c("Sepal.Length", "Sepal.Width", "Petal.Length")), width = 4
)))


server<- function(input, output){
  output$correlation<- renderPlot({
    barplot(iris$Sepal.Length, iris[[input$features]])})
  
  output$value<- renderPlot({
    boxplot(iris$Sepal.Width, iris[[input$features]])})
      }

shinyApp(ui, server)

head(iris)
