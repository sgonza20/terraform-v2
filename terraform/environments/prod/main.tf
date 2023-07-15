provider "aws" {
  region = "us-east-1"
}

module "static_website" {
  source      = "../../modules/cm-s3"
  bucket_name = "prod-static-website"
  tags = {
    Name = "Prod Static Website Bucket"
  }
}

# resource "aws_s3_bucket_object" "index_html" {
#   bucket = module.static_website.bucket_id
#   key    = "index.html"
#   source = "path/to/prod/index.html"
#   content_type = "text/html"
# }

# resource "aws_s3_bucket_object" "error_html" {
#   bucket = module.static_website.bucket_id
#   key    = "error.html"
#   source = "path/to/prod/error.html"
#   content_type = "text/html"
# }
