#ui.R

shinyUI(fluidPage(
  headerPanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", 'choose up to 50 contigs',
                     multiple = TRUE,
                     choices = contigs[1:100],
                     options=list(maxItems=50)), width = 2  
            ),
    
    mainPanel(
      plotOutput("histogram")
      )
    )
  )
)


