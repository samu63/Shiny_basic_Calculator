
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)

shinyUI(pageWithSidebar(
  
  
  headerPanel("Basic Statistics Calculator"),
  
  
  sidebarPanel(
    
    p("Data input:"),
    tags$textarea(id="textarea.in", rows=30, cols=10, "78\n57\n66\n78\n71\n78\n80\n64\n66\n75\n68\n84\n46\n73\n48\n70\n84\n73\n64\n78\n70\n87\n71\n45\n59\n70\n64\n80\n57\n91\n84\n70\n77\n68\n75\n62\n52\n59\n71\n66\n68\n61\n64\n77\n68\n70\n46\n53\n73\n62\n53\n70\n82\n70\n77\n82\n59\n86\n78\n80\n75\n80\n82\n94\n84\n84\n91\n59\n71\n77\n86\n66\n55\n71\n71\n87\n77\n87\n82\n68\n71\n91\n71\n78\n80\n94\n82\n75\n78\n82\n52\n68"),
    p('Input values can be separated by', br(),
      'newlines, spaces, commas, or tabs.')
  ),
  
  
  mainPanel(
    tabsetPanel(
      
      tabPanel("Main",
               
               h3("Basic statistics"),
               verbatimTextOutput("textarea.out"),
               
               br(),
               
               h3("Histogram"),
               downloadButton('downloadDistPlot', 'Download the plot as pdf'),
               
               plotOutput("distPlot"),
               
               h3("Box plot with individual data points"),
               downloadButton('downloadBoxPlot', 'Download the plot as pdf'),
               
               
               plotOutput("qqPlot", width="70%"),
               
               br(),
               br(),
               
               strong('R session info'),
               verbatimTextOutput("info.out")
               
      ),
      
      tabPanel("About",
               
               strong('Note'),
               p('This web application is developed with',
                 a("Shiny.", href="http://www.rstudio.com/shiny/", target="_blank"),
                 ''),
               
               br(),
               
               strong('List of Packages Used'), br(),
               code('library(shiny)'),br(),
               code('library(psych)'),br(),
               
               br(),
               
               p('This is a  simple application that show the normal distribution and Q–Q plot of a set of points.')
               br(),
               p('The left panel is iniziated by a set of number to show a default graph')
               p('The user can change the set by digit or paste a number of point.')
               br(),
               p('All graph can be downloaded in pdf format.')
               br(),
               
               
               a(img(src="http://i.creativecommons.org/p/mark/1.0/80x15.png"), target="_blank", href="http://creativecommons.org/publicdomain/mark/1.0/")
      )
    )
  )
))
