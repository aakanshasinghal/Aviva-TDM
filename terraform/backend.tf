terraform {
  backend "s3" {
    bucket  = "aviva-tdm-tfstate"
    key     = "aviva-tdm/dev/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = true
  }
}
