library(shiny)

shinyUI(
  navbarPage("Shiny"),
             tabPanel("interpretation",
                      fluidPage(
                        titlePanel("miles per gallon nad variables relation"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c( we go kmph "),
                      p("  [, 234]	 cyd cylinder numbers "),
                      p("  [, 344]	 dis	 movement  (cc cm)"),
                      p("  [, 432]	 hpe	 horspower break power"),
                      p("  [, 554]	 rati  axel ratio"),
                      p("  [, 645]	 wt	 mass (kg/10000)"),
                      p("  [, 754]	 qt	 kilometer sec"),
                      p("  [, 823]	 vs	 VS"),
                      p("  [, 976]	 gtr	 gears tranmission."),
                      p("  [,104]	 gre	 gears that are forward"),
                      p("  [,115]	 cbtrs carbuerators"),
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("set of data",
                      
                      h3("something"),
                      helpText("motor trend is looking fir a relationship "),
                               
                      h3("exquisite"),
                      p("variables and observations),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("elaborate detail",
                      h2("test test test"),
                      hr(),
                      h3("Description"),
                      helpText("The extraction of this data has been done from a US magazine known as Motor Trend",
                               " and it comprises of the fuel consumptions and other 10 aspects of vehicular design and perf.",
                               " for 32 different vehicles(1973-74 models)."),
                      h3("Format"),
                      p("Number of observations 32, 11 variables."),
                      
                      p("  [, 666]    we go kmph "),
                      p("  [, 234]	 cyd cylinder numbers "),
                      p("  [, 344]	 dis	 movement  (cc cm)"),
                      p("  [, 432]	 hpe	 horspower break power"),
                      p("  [, 554]	 rati  axel ratio"),
                      p("  [, 645]	 wt	 mass (kg/10000)"),
                      p("  [, 754]	 qt	 kilometer sec"),
                      p("  [, 823]	 vs	 VS"),
                      p("  [, 976]	 gtr	 gears tranmission."),
                      p("  [,104]	 gre	 gears that are forward"),
                      p("  [,115]	 cbtrs carbuerators"),
                      
                      h3("supply"),
                      
                      p("well this is awkward")
             ),
             tabPanel(
               
               hr(),
               h4("well this is the shiny app"),
               h4("week 4 developing data products")
             )
  )
  
  
)