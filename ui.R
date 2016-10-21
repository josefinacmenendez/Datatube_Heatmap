#ui.R

shinyUI(fluidPage(
  headerPanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", 'choose up to 50 contigs',
                     multiple = TRUE,
                     choices = contigs,
                     options=list(maxItems=50)), width = 2  
            ),
    
    mainPanel(
      plotOutput("histogram")
      )
    )
  )
)


