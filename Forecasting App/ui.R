library(shiny)

# Training set
TrainSet <- read.csv("training.csv", header = TRUE)
TrainSet <- TrainSet[,-1]

pageWithSidebar(
  
  # Page header
  headerPanel('Credit Default App'),
  
  # Input values
  sidebarPanel(
    #HTML("<h3>Input parameters</h3>"),
    tags$label(h3('Input parameters')),
    numericInput("Education", 
                 label = "Education [Higher Education - 1, Secondary Education - 2, Graduate - 3, Master - 4]", 
                 value = 1),
    numericInput("Marriage", 
                 label = "Marital Status
                          [Gender Code 0 Female, 1 Male]", 
                 value = 2),
    numericInput("Age", 
                 label = "Age [Max 57, Min 23]", 
                 value = 24),
    numericInput("BILL", 
                 label = "BILL Amount [Max 367965,  Min 0]", 
                 value = 3913),
    
    actionButton("submitbutton", "Submit", 
                 class = "btn btn-primary")
  ),
  
  mainPanel(
    tags$label(h3('Predict Customer Credit Default Rate ')), # Status/Output Text Box
    verbatimTextOutput('contents'),
    tableOutput('tabledata') # Prediction results table
    
  )
)


