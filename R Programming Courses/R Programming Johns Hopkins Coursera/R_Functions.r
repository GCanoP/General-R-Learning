# =================================
# ========== R FUNCTIONS ==========
# =================================

# Basic Structure of a R Function. 
# Functions example 1. 
add <- function(x, y){
  print(x + y) 
}

# Functions example 2. 
above = function(x, n=10){
  use = x > n
  x[use]
}

# Function example 3
columnmean = function(y, removeNa = TRUE){
  nc = ncol(y)
  means = numeric(nc)
  for(i in 1:nc){
    means[i] = mean(y[i], na.rm = removeNa)
  }
  means
}

# ===== DATES AND TIMES IN R =====
# Print datatime format. 
date = as.Date("1970-01-01")
current_time = Sys.time()

# Print datatime format POSIX. 
x = Sys.time()
p = as.POSIXlt(x)
names(unclass(p))

# Print datatime string format. 
datestring = c("January 10, 2012 10:40", "December 9, 2011 9:10")
x = strptime(datestring, "%B %d, %Y %H:%M")
print(x)







