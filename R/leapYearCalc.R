#Gert Sterenborg & Job de Pater
#7 January 2016

is.leap <- function(year=as.numeric(format(Sys.Date(), "%Y"))){
  if(!is.numeric(year)){
    stop("year is not a numeric")
  }else{
    if(year < 1582){
      warning(paste(year,"is out of the valid range"),immediate. = TRUE)
    }
    leap <- FALSE
    if(year %% 4 == 0){
      if(year %% 100 == 0){
        if(year %% 400 == 0){
          leap <- TRUE
        }
      }else{
        leap <- TRUE
      }
    }
    return(leap)
  }
}