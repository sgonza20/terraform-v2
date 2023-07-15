terraform {
  backend "s3" {
    bucket         = "dev-state-bucket"
    region         = "us-east-1"
    dynamodb_table = "dev-lock-table"
    encrypt        = true
    key            = "terraform.tfstate"
  }
}
