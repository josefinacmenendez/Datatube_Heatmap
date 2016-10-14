#ui.R
shinyUI(fluidPage(
  titlePanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", "chooce up to 20 contigs", 
                     multiple = TRUE, 
                     choices = contigs, #need to be able to parse the entire list without crashing
                     options=list(maxItems=20))
                ),
    mainPanel(
      textOutput("contig"),
      plotOutput("histogram")
      )
    )
  )
)


