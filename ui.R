#ui.R
shinyUI(
  
  fluidPage(
 
  titlePanel("Select Contigs"),
  sidebarLayout(
  
      sidebarPanel(
      selectizeInput("contigs", "Select up to 50 contigs", 
                     choices = NULL, #need to be able to parse the entire list without crashing
                     options=list(maxOptions = 100),
                     multiple = TRUE)
                 ),              
    mainPanel(
      plotOutput("histogram")
      )
    )
  )
)


