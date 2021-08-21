library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Fertility in the Swiss Dataset"),
    sidebarLayout(
        sidebarPanel(
            h4("Around 1888, a standardized fertility measure and socio-economic indicators were taken
               for each of 47 French-speaking provinces of Switzerland. Select any one of the variables below to
               see how it predicts fertility."),
            selectInput("variable", "Which variable do you want to look at?",
                        choices = c("Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality"),
                        selected = "Agriculture")
        ),
        mainPanel(
            plotOutput("plot1")
        )
    )
))