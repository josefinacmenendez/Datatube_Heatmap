library(shiny)
library(gplots)
# use the below options code if you wish to increase the file input limit, in this example file input limit is increased from 5MB to 9MB
options(shiny.maxRequestSize=30*1024^2)


shinyServer(function(input,output){
  #output$contig <- renderText(class(input$contigs))This is good for debugging
  output$contig <- renderText({
    if(input$contigs =='')
    {paste("Select at least two contigs")}
    else
    {print("Histogram for differential gene expression for the following contigs: ")
      input$contigs}
  })

  output$histogram <- renderPlot({heatmap.2(diff_exp_pepino_df[c(input$contigs),], trace = "none", col = redblue(20))})

})