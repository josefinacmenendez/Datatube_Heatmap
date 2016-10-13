library(shiny)
library(gplots)
diff_exp_pepino <- read.csv("pepino_dge.csv")
contigs <- diff_exp_pepino[,1]
diff_exp_pepino_df <- cbind(diff_exp_pepino[,2], diff_exp_pepino[,3], diff_exp_pepino[,4])
rownames(diff_exp_pepino_df)<-contigs
colnames(diff_exp_pepino_df)<-c("Day2","Day12","Day20")
contigs <- as.vector(contigs)

shinyUI(fluidPage(
  titlePanel("Select Contigs"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput("contigs", "chooce up to 20 contigs", 
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


