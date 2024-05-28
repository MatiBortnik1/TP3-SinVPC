variable "VacunasTable" {
  type    = string
  default = "my_table"
}

variable "s3_bucket_name" {
  description = "Nombre del bucket de S3 para el sitio web estático"
  type        = string
  default     = "vacunas-sitio-web-estatico-1234567890"
}

variable "cloudfront_price_class" {
  description = "Clase de precio de CloudFront (por ejemplo, 'PriceClass_100')"
  type        = string
  default     = "PriceClass_100"
}

variable "aws_region" {
    type    = string
    default = "us-east-1"
}

variable "aws_account_id" {
    type    = string
    default = "590183869067"
}
