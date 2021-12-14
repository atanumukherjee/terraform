terraform {
  backend "s3" {
    bucket = "terraform-remotestate-some"
    key    = "terrraform/remotestate"
    region = "eu-west-2"
  }

}