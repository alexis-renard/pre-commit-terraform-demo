##########################################
# Define layer variables
##########################################

locals {
  tags = {
    Application_Code = "DMO"
    Owner            = "CCOE"
    Cost_Center      = "Transverse"
    Environment      = "DEV"
    Name             = "DEMO INSTANCE"
    Description      = "Please destroy if not done yet"
  }
}
