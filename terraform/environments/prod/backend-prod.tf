terraform {
  backend "s3" {
    bucket         = "prod-state-bucket"
    region         = "us-east-1"
    dynamodb_table = "prod-lock-table"
    encrypt        = true
    key            = "terraform.tfstate"
  }
}
