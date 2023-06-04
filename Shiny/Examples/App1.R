---
  output: html_document
title:  RMarkdown with Shiny
runtime: shiny
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

```{css}
.main-container {
  max-width: 100% !important;
  margin: auto;
}
```

```{r data}
x <- faithful$waiting
```

<br>
  
  ### Interactive histogram
  
  <br>
  
  ```{r Shiny inputs and outputs}
fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput <- sliderInput(
        inputId = "bins",
        label = "Number of bins",
        min = 1,
        max = 50,
        value = 30
      )
    ),
    mainPanel(
      renderPlot({
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        hist(x, breaks = bins)
      })
    )
  )
)
```