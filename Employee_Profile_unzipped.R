# Load the necessary library
library(utils)

# Specify the path to the Zip file
zip_file <- "C:\\Users\\HP ENVY\\Downloads\\Python\\Mod 2\\Employee_Profile.zip"

# Extract files from the Zip archive
unzip("Employee_Profile.zip", exdir = "C:\\Users\\HP ENVY\\Downloads\\Python\\Mod 2")

print ("Files unzipped successfully!")
