library(blogdown)
install.packages('blogdown')
install.packages('reactable')
install.packages('reactablefmtr')
install.packages('xlsx')
library(xlsx)
df_hospitales <- readRDS('bdmap/df_hospitales_seleccion_mapa.rds')
write.xlsx(df_hospitales,'static/data/centros_medicos.xls', sheetName = 'cen_medicos', col.names = TRUE, append = FALSE)



content/
  data-raw/
  laoyuts/
  netlify.toml
README.me
resources/
  suma.rds
themes/
  valor.rds
