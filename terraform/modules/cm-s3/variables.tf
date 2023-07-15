variable "bucket_name" {
  description = "The name of the S3 bucket for the static website"
  type        = string
}

variable "tags" {
  description = "Tags for the static website resources"
  type        = map(string)
  default     = {}
}
