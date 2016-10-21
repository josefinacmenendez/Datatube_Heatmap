#server.R

#increase file input size
#options(shiny.maxRequestSize=30*1024^2)

shinyServer(function(input,output){
  output$histogram <- renderPlot({
    validate(need(length(input$contigs)>1,message = "Select at least 2 contigs and 50 contigs at most"))
    heatmap.2(diff_exp_pepino_df[c(input$contigs),], trace = "none", col = redblue(20),
              cexCol = 2,
              cexRow = 0.2 + 1/log10(length(input$contigs)),
              margins = c(8,20))
  }, height = 700, width = 1000)
})
