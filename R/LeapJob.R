# Job de Pater
# 20160107

# Function to check if year is leap year

is.leap <- function(year = as.numeric(format(Sys.Date(), "%Y"))){
  if (!is.numeric(year)){
    stop("Year has to be numeric")
  }
  if (year<1582){
    stop(paste0(year, "is not valid because it before 1582"))
  }
  if (year %% 4 != 0) {
    leap <- F
  } else if (year %% 100 != 0 ){
    leap <- T
  } else if (year %% 400 != 0){
    leap <- F
  } else leap <- T
  
  return(leap)
  
}