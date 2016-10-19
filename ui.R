#ui.R
shinyUI(fluidPage(
  titlePanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", "Choose up to 50 contigs", 
                     multiple = TRUE, 
                     choices = contigs, #All items are available; the list displays items 1 - 1001, but the user can input a name that is not shown
                     options=list(maxItems=50))
                 ),              
    mainPanel(
      textOutput("contig"),
      plotOutput("histogram")
      )
    )
  )
)


