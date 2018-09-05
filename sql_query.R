library(RMySQL)
library(anytime)

sqlQuery <- function (query) {
  
  # Connect to MySQL database.
  care_db = dbConnect(MySQL(), user="", password="", port=3306, host="", dbname="")
  
  # Send query to obtain result set
  rs <- dbSendQuery(care_db, query)
  
  # Get elements from result sets and convert to dataframe
  result <- fetch(rs, -1)
  
  # close db connection
  dbDisconnect(care_db)
  
  # return the dataframe
  return(result)
}

db_result <- sqlQuery("SELECT MAX(timestamp), X FROM Y WHERE timestamp > 1 GROUP BY X ORDER BY MAX(timestamp) DESC")


