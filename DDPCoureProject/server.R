library(shiny)
shinyServer(function(input, output) {

    output$plot1 <- renderPlot({
        data(swiss)
        inputvar <- input$variable
        model <- lm(paste("Fertility ~", inputvar), data = swiss)
        plot(swiss[,inputvar], swiss$Fertility, xlab = input$variable, ylab = "Fertility", 
            main = paste("Explaining Ferility with", input$variable), col = "black")
            abline(model, col = "red", lwd = 2)
    })
})