library(git2r)
setwd('/Users/josemiguelavendanoinfante/R/javenda_site')
source('/Users/josemiguelavendanoinfante/R/shiny/app_covid_ven/actualizacion.R')

#ESTE ES EL QUE FUNCION'O
#https://popgen.nescent.org/CONTRIBUTING_WITH_GIT2R.html
#https://docs.ropensci.org/git2r/index.html
#https://github.com/ropensci/git2r/issues/296

repo <- git2r::repository('/Users/josemiguelavendanoinfante/R/javenda_site')
git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')
#git2r::cred_ssh_key()
cred <- git2r::cred_ssh_key(
  publickey = "/Users/josemiguelavendanoinfante/.ssh/id_rsa.pub",
  privatekey = "/Users/josemiguelavendanoinfante/.ssh/id_rsa")

git2r::cred_token()
#push(repo, credentials = cred_token())#probar



#x <- rnorm(1:10)
#nombre <-paste0("static/covid19venezuela.html")

#saveRDS (x, paste0('/Users/josemiguelavendanoinfante/R/pruebas_github/',nombre))
#x <- rnorm(1:10)
#save(x, file = paste0("/Users/josemiguelavendanoinfante/R/pruebas_github/data/data_", make.names(Sys.time()), ".Rda"))
#setwd('/Users/josemiguelavendanoinfante/R/pruebas_github/data')
git2r::add(repo,'*')
git2r::commit(repo,paste('Commit covid', Sys.time()))
#git2r::libgit2_features()
git2r::config(repo, user.name = 'javendaXgh',user.email = 'javendaXgh@gmail.com')

git2r::push(credentials = cred)
