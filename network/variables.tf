variable "region" {
  default = "us-east-1"
}

variable "cidr" {
  default = {
    develop     = ""
    staging     = ""
    production  = ""

  }
}


variable "private_subnets" {
  
}

variable "public_subnets" {
}
