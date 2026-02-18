save_csv <- function(dataframe, file) {
  # Automatically find the current working directory of the project.
  # I think this makes the code "portable" so it works on any computer
  full_path <- file.path(getwd(), file)
  
  # File saving
  write.csv(dataframe, file = full_path, row.names = FALSE)
  
  # Show confirmation message
  message("File successfully saved to: ", full_path)
}