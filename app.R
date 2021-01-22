# ESM 244 Climate change sentiment Shiny app!
# Michelle Handy & Roni Shen

library(tidyverse)
library(shiny)

ui <- fluidPage(theme = ,
                
                navbarPage("Title of our app",
                           # tab 1: graph of theory-based words
                           tabPanel("Tab 1",
                                    sidebarLayout(
                                      sidebarPanel("Widgets",
                                                   # widget options
                                                   checkboxGroupInput(inputId = "",
                                                                      label = "Select Category:",
                                                                      choices = unique())
                                                   ),
                                      mainPanel("Graph",
                                                plotOutput(""))
                                      )
                                    ),
                           # tab 2: text analysis word cloud
                           tabPanel("Tab 2",
                                    sidebarLayout(
                                      sidebarPanel("widgets",
                                                   checkboxGroupInput(inputId = "",
                                                                      label = "Select Category:",
                                                                      choices = unique())
                                                   ),
                                      mainPanel("Cloud",
                                                plotOutput(""))
                                      )
                                    ),
                           # tab 3: sentiment analysis cloud
                           tabPanel("Tab 3",
                                    sidebarLayout(
                                      sidebarPanel("Widgets",
                                                  checkboxGroupInput(inputId = "",
                                                                     label = "Select Category:",
                                                                     choices = unique())
                                                  ),
                                      mainPanel("Graph",
                                                plotOutput(""))
                                      )
                                    ),
                           # tab 4: random forest model
                           tabPanel("Tab 4",
                                    sidebarLayout(
                                      sidebarPanel("Widgets",
                                                   checkboxGroupInput(inputId = "",
                                                                      label = "Select Category:",
                                                                      choices = unique())
                                      ),
                                      mainPanel("Graph",
                                                plotOutput(""))
                                      )
                                    )
                          )
)

server <- function(input, output) {
  
  # create reactive subset based on user selections
  cc_reactive <- reactive({
    
    our_dataset %>% 
      filter(species %in% input$###)
    
  })
  
  # create output plot based on user selections
  output$cc_plot <- renderPlot(
    ggplot(data = cc_reactive(), aes(x = ###, y = ###)) +
      geom_point(aes(color = ###))
  ) 
  
}

shinyApp(ui = ui, server = server)

