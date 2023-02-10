# ===============================================
# ========== R PROGRAMMING ASSIGMENT 1 ==========
# ===============================================

# Creating the pollutantmean
pollutantmean = function(pollutant, id){
  
  # directory = indicate the path/location of the CSV (character vector). 
  # pollutant = indicate the name of pollutant "sulfate" or "nitrate" (character vector)
  # id = indicate the monitor id numbers (integer vector). 
  
  # Return the mean of the pollutant across all monitor list in the id vector (ignoring NA)
  # Note: Results are not rounded. 
  directory = "/media/gerardo/ADATA_Gerardo_Cano/05_Data-Science-Codes/General R Learning/Programming Assigment 1/specdata"
  file_list = list.files(directory)
  data = NA
  for (i in id){
    # Selecting the file. 
    file_dir = paste(directory, "/",file_list[i],sep="")
    file_data = read.csv(file_dir, sep = "")
    #Accumulate data. 
    data = rbind(data, file_data)
  }
  # Calculate the mean
  mean(data[[pollutant]], na.rm = TRUE)
}

