ui <- fluidPage(
  sliderInput(
    inputId = "bins",
    label = "Number of bins:",
    min = 1,
    max = 50,
    value = 30
  )
)

server1 <- function(input, output) {
  renderPrint(input$bins)  # ERROR
  renderPlot({hist(x)})
}

server2 <- function(input, output) {
  output$distPlot <- hist(x) # ERROR
}

 shinyApp(ui, server1)
# shinyApp(ui, server2)