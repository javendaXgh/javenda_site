library(blogdown)
install.packages('blogdown')
install.packages('reactable')
install.packages('reactablefmtr')
install.packages('xlsx')
library(xlsx)
df_hospitales <- readRDS('bdmap/df_hospitales_seleccion_mapa.rds')
write.xlsx(df_hospitales,'static/data/centros_medicos.xls', sheetName = 'cen_medicos', col.names = TRUE, append = FALSE)


.Rproj.user
.Rhistory
.RData
.Ruserdata
javenda_site.Rproj
.gitignore
assets/
  config
config.toml
config.yaml
content/
  data-raw/
  laoyuts/
  netlify.toml
README.me
resources/
  suma.rds
themes/
  valor.rds
