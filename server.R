#server.R
shinyServer(function(input,output){
  #output$contig <- renderText(class(input$contigs))This is good for debugging
  output$histogram <- renderPlot({
    validate(need(length(input$contigs)>1,message = "Select at least 2 contigs and 20 contigs at most")) #input validation
    heatmap.2(diff_exp_pepino_df[c(input$contigs),], trace = "none", col = redblue(20)) #generate heatmap
  })
})
