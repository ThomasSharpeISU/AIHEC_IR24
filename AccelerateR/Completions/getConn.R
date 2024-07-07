
#Connection strings vary by type of database. Intended as an example to illustrate my process, not a fully working code for you

dbConn <- function(server,uid, pwd) {
  
  if(server == 'CustomName1') {
    
    tString <- '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=HostName)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=ServiceName)))'

  } else if(server == 'CustomName2') {
    
    tString <- '(DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=HostName)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=ServiceName)))'
    
  } 
  
  con <- dbConnect(dbDriver("Oracle"),dbname=tString, username = uid,password = pwd)
  
  return(con)  
  
}

