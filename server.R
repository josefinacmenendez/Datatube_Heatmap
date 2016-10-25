#server.R

#increase file input size
#options(shiny.maxRequestSize=30*1024^2)
shinyServer(function(input,output,session){
  
  #Update input according to user's selection
  updateSelectizeInput(session, 'contigs', choices = contigs, server = TRUE, options = list(maxItems=50))
  
  #output$contig <- renderText(class(input$contigs))This is good for testing outputs
  output$histogram <- renderPlot({
    validate(need(length(input$contigs)>1,message = "Select at least 2 contigs and 20 contigs at most")) #input validation
    heatmap.2(dge_pepino[c(input$contigs),], trace = "none", col = redblue(20)) #generate heatmap
  })
})
