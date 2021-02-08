x <- rnorm(1:10)
save(x, file = paste0("/Users/josemiguelavendanoinfante/R/sites/javenda_site/data-raw/arc.Rda"))





system('git config user.email "javenda@gmail.com"')
system('git config user.name "javendaXgh"')

#system('git remote add origin /Users/josemiguelavendanoinfante/R/sites/javenda_site/.git')
#system('git remote add p.jpeg https://github.com/javendaXgh/javenda_site')
#system('git remote add .')
system('git add /Users/josemiguelavendanoinfante/R/sites/javenda_site/data-raw/arc.Rda')
system('git commit -am "x1_prueba"')
#system('git status')

#system('git branch -a')
system('git pull https://github.com/javendaXgh/javenda_site master')
system('git push https://github.com/javendaXgh/javenda_site master')#main master remotes/origin/HEAD
#system(' git branch -a')