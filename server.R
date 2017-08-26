library(datasets)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  
  output$USArrestsPlot <- renderPlot({
    
    state.names = row.names(USArrests)
    barplot(USArrests[,input$offence], 
            main=input$offence,
            names.arg = state.names, 
            col=c(1,2,3,4,5), border="blue",
            las = 2,
            ylab = "Offence Rate per 100,000")
      })
}
