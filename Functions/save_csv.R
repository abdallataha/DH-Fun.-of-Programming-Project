save_csv <- function(dataframe, file) {
  # Defining the folder where your project is on my computer
  local_path <- "F:/Digital Health Master's Potsdam/1st Semester DH/Fundmentals of Programming R/Project/"
  
  # Combining the path and the filename
  full_path <- paste0(local_path, file)
  
  # File saving
  write.csv(dataframe, file = full_path, row.names = FALSE)
  
  # Show me a confirmation message
  message("File successfully saved to: ", full_path)

}
