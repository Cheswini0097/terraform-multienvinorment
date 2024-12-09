
variable  "instances" {
  type        = map
  default = {
        mysql = "t3.micro"
        backend = "t3.small"
        frontend = "t3.micro"
}
}

variable "domain_name" {
  default = "cheswini.shop"
}

variable "zone_id" {
  default = "Z06610612YINEVKPZBC71"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
    }
}

variable "tags" {
    type = map
    default = {
        Project = "expense"
        Terraform = "true"
}
}

variable "environment" {
}
