
libraries <- c("ggplot2","shiny", "tidyverse", "magrittr",
               "leaflet", "dplyr", "rvest", "sqldf", "httr")
lapply(libraries, require, character.only = TRUE)

ui_students <- fluidPage(
  titlePanel("Student Information Panel"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Gender", label = "Gender",
                  choices = c("male","femaleput")),
      selectInput(inputId = "Ethnicity", label = "Ethnicity",
                  choices = c("group A", "group B", "group C", "group D","group E"))
    )
  ),
  mainPanel(
    plotOutput("plot")
  )
)

server_stundents <- function(input, output){
  output$plot <- renderPlot({
    df <- read.csv("StudentsPerformance.csv")
    ggplot(df,aes(x = df$math.score) + )
  })
}

shinyApp(ui = ui_students, server = server_students)