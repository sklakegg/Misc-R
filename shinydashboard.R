## app.R ##
library(shiny)
library(ggplot2)
library(shinyjs)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Title"),
  dashboardSidebar(),
  dashboardBody(
    useShinyjs(),
    fluidRow(
      h2("Header", align="center"),
      # Boxes need to be put in a row (or column)
      box(plotOutput("plot1"), width = 12) 
    )
  )
)

server <- function(input, output) {
  # Hide sidebar
  addClass(selector = "body", class = "sidebar-collapse")
  
  # Logic

  # Plot
  output$plot1 <- renderPlot({
    ggplot() + geom_bar(stat="identity")
  })
}

shinyApp(ui, server)
