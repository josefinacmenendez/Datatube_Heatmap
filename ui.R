#ui.R

shinyUI(fluidPage(
  headerPanel("Heatmap generator for differential expresion data"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", 'choose up to 50 contigs',
                     multiple = TRUE,
                     choices = contigs[1:1000],
                     options=list(maxItems=50)), width = 2  
            ),
    
    mainPanel(
      plotOutput("histogram")
      )
    )
  )
)


