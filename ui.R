#ui.R
shinyUI(fluidPage(
  titlePanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", "contigs 1 - 1000", 
                     multiple = TRUE, 
                     choices = contigs[1:1000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20)),
                
    selectizeInput("contigs", "contigs 1001 - 2000", 
                     multiple = TRUE, 
                     choices = contigs[1001:2000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20)),
                
  selectizeInput("contigs", "contigs 2001 - 3000", 
                     multiple = TRUE, 
                     choices = contigs[2001:3000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20)),
                
  selectizeInput("contigs", "contigs 3001 - 4000", 
                     multiple = TRUE, 
                     choices = contigs[4001:5000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20)),
                
  selectizeInput("contigs", "contigs 4001 - 5000", 
                     multiple = TRUE, 
                     choices = contigs[5001:6000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20)),
                
  selectizeInput("contigs", "contigs 5001 - 6000", 
                     multiple = TRUE, 
                     choices = contigs[6001:7000], #need to be able to parse the entire list without crashing
                     options=list(maxItems=20)) ),
                
    mainPanel(
      textOutput("contig"),
      plotOutput("histogram")
      )
    )
  )
)


