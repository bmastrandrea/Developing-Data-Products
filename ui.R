library(datasets)
offence = colnames(USArrests)
# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Offenses by State"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("offence", "Offence:", 
                  choices=colnames(USArrests)),
      hr(),
      helpText("Violent Crime Rates by US State in 1973."),
      hr("User Guide"),
      hr("This is a little application, developed with Shiny. The dataset is one of the set in the cran library: USArrest. You select a type of crime in the menu above and the graphic change in accordance, showing the rate for US states")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("USArrestsPlot")  
    )
    
  )
)
