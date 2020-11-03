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

variable "common_tags" {
  type = object({
    Application_Code = string
    Owner            = string
    Cost_Center      = string
    Environment      = string
    Name             = string
    Description      = string
  })
  description = "The layer common tags to associate to each resources deployed."
}
