#ui.R
shinyUI(fluidPage(
  titlePanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", "contigs 1 - 1001", 
                     multiple = TRUE, 
                     choices = contigs[1:1000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20))
                 ),              
    mainPanel(
      textOutput("contig"),
      plotOutput("histogram")
      )
    )
  )
)


