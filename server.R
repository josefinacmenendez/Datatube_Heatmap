#server.R

#increase file input size
#options(shiny.maxRequestSize=30*1024^2)

shinyServer(function(input,output,session){
  
  #Update input according to user's selection
  updateSelectizeInput(session, 'contigs', choices = contigs, server = TRUE, options = list(maxItems=50))
  
  #output$contig <- renderText(class(input$contigs))This is good for testing outputs
  output$histogram <- renderPlot({
    validate(need(length(input$contigs)>1,message = "Select at least 2 contigs and 50 contigs at most")) #input validation
    plotHist(input$contigs)
  }, height = 700, width = 1000)

  #downloadHandler allows for downloading the plot
  output$dld <- downloadHandler(
    filename = function(){
      paste("heatmap", Sys.Date(), "pdf", sep = ".")
    },
    content = function(file) {
      pdf(file, height = 7, width = 10)
      plotHist(input$contigs)
      dev.off()
    }
  )
})
