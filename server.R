library(shiny)
library(NLP)
library(tm)
library(RWeka)
source("NLP.R")
shinyServer(function(input, output) {
    output$NextWord <- renderPrint({
        result <- wordproc(input$inputText)
        result
    });
    output$inputWords <- renderText({
        input$inputText});
    }
)

