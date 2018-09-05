library("RSQLite")

sqlite <- dbDriver("SQLite")
setwd("/Path")
exampledb <- dbConnect(sqlite, "X.db")
dbGetQuery(exampledb, "SELECT * FROM table LIMIT 10")
dbDisconnect(exampledb)

