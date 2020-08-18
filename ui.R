library(shiny)

# Define UI for application that draws a histogram
shinyUI(
    navbarPage("Coursera Data Science Capstone: Course Project",
               tabPanel("Predict Word",
                        HTML("<strong>Author: Shreyash Mishra</strong>"),
                        br(),
                        HTML("<strong>Date: 18th August 2020</strong>"),
                        br(),
                        sidebarLayout(
                            sidebarPanel(
                                helpText("Using NLP to determine the next word after user input."),
                                hr(),
                                textInput("inputText", "Enter a word, Text or a sentence",value = ""),
                                hr(),
                                hr(),
                                hr()
                            ),
                            mainPanel(
                                h2("Word Predicton Result"),
                                h5("The next word for the given input is predicted using the NLP,
                                using data provided by Coursera and SwiftKey as a Capstone Project."),
                                strong("Your input"),
                                verbatimTextOutput("inputWords"),
                                hr(),
                                strong("Next word can be"),
                                strong(code(textOutput("NextWord"))),
                                hr(),
                                hr()
                            )
                        )
               ),
               tabPanel("Source:",
                        HTML("<strong>Author: Shreyash Mishra</strong>"),
                        br(),
                        HTML("<strong>Date: 18th August 2020</strong>"),
                        br(),
                        sidebarLayout(
                            sidebarPanel(
                                tags$a(href="https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip", "Data can be downloaded here."),
                                hr(),
                                hr(),
                                hr(),
                                hr()
                            ),
                            mainPanel(
                                hr(),
                                strong("This Shiny Application is a part of the Capstone Course Project of the Data Science Specialization, organized by Coursera and SwiftKey."),
                                strong("The work that I have done can be found "),
                                tags$a(href="", "here."),
                                hr(),
                                hr(),
                                strong("The course link is "),
                                tags$a(href="https://www.coursera.org/learn/data-science-project", "here."),
                            )
                        )
               )
    )
)
