#ui.R
shinyUI(
  
  fluidPage(
 
  titlePanel("Select Contigs"),
  sidebarLayout(
  
      sidebarPanel(
      selectizeInput("contigs", "Select up to 50 contigs", 
                     choices = NULL, #need to be able to parse the entire list without crashing
                     options=list(maxOptions = 100),
                     multiple = TRUE),
      #radioButtons(inputId = "imageType", label = "Select the file type", choices = list("jpeg", "pdf")),
      downloadButton(outputId = "dld", label = "Export as pdf")
                 ),              
    mainPanel(
      plotOutput("histogram")
      )
    )
  )
)


