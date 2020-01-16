## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library("demoShiny")
demoShiny()

## ------------------------------------------------------------------------
demoShiny('demoShiny')

## ----eval=FALSE----------------------------------------------------------
#  # full topic
#  demoShiny('demoShiny::hist')
#  # if only one app is available then it will be run
#  demoShiny('hist')
#  # abbreviation for topics or packages can used
#  demoShiny('d::hist')

## ------------------------------------------------------------------------
list.files(system.file('shiny', package="demoShiny"), include.dirs=TRUE)

## ---- code=readLines(system.file('shiny', 'hist.R', package='demoShiny')), eval=FALSE----
#  launch.browser <- function(url) {
#    # modify URL, which has no effect for app1 :(
#    url <- sprintf('%s/?lang=%s', url, 'de')
#    invisible(.Call("rs_shinyviewer", url, getwd(), 3))
#  }
#  #
#  library("shiny")
#  runApp(system.file('shiny', 'hist', package='demoShiny'), launch.browser=launch.browser)

