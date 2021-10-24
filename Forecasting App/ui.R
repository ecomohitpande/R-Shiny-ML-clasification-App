
ui <- pageWithSidebar(
  
  # Page header
  headerPanel('Credit Default'),
  
  # Input values
  sidebarPanel(
    #HTML("<h3>Input parameters</h3>"),
    tags$label(h3('Input parameters')),
    numericInput("Sepal.Length", 
                 label = "Education", 
                 value = 1),
    numericInput("Sepal.Width", 
                 label = "Marriage", 
                 value = 2),
    numericInput("Petal.Length", 
                 label = "Age", 
                 value = 24),
    numericInput("Petal.Width", 
                 label = "BILL", 
                 value = 3913),
    
    actionButton("submitbutton", "Submit", 
                 class = "btn btn-primary")
  ),
  
  mainPanel(
    tags$label(h3('Status/Output')), # Status/Output Text Box
    verbatimTextOutput('contents'),
    tableOutput('tabledata') # Prediction results table
    
  )
)
