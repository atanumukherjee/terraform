variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-2"

}
variable "AMIS" {
  type = map(any)
  default = {
    eu-west-2 = "ami-09a2a0f7d2db8baca"
    eu-west-1 = ""
    eu-west-3 = ""
  }

}