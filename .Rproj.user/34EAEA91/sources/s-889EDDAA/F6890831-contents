library(git2r)
library(rmarkdown)
library(shinydashboard)
#library(shinyjs)
library(plotly)
library(highcharter)
library(flexdashboard)
library(emo)
library(stringr)
library(DT)
library(dplyr)
library(tidyverse)
Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc")
#R -e "Sys.setenv(RSTUDIO_PANDOC='/usr/lib/rstudio/bin/pandoc'); rmarkdown::render('File.Rmd', output_file='output.html')"

setwd('/home/jose/R/javenda_site')
source('/home/jose/R/shiny/app_covid_ven/actualizacion.R')
#file.copy('/Users/josemiguelavendanoinfante/R/shiny/app_covid_ven/covid_intento.html','/Users/josemiguelavendanoinfante/R/javenda_site/static/covid19venezuela.html', 
#overwrite = TRUE)
#0 */3 * * *  ######3hours cron setting
#ESTE ES EL QUE FUNCION'O
#https://popgen.nescent.org/CONTRIBUTING_WITH_GIT2R.html
#https://docs.ropensci.org/git2r/index.html
#https://github.com/ropensci/git2r/issues/296

repo <- git2r::repository('/home/jose/R/javenda_site')
#git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')
#git2r::cred_ssh_key()
cred <- git2r::cred_ssh_key(
  publickey = "/home/jose/.ssh/id_rsa.pub",
  privatekey = "/home/jose/.ssh/id_rsa")

git2r::cred_token()
git2r::add(repo,'*')
git2r::commit(repo,paste('Commit covid', Sys.time()))
git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')

git2r::push(credentials = cred)
