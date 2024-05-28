output "dynamodb_table_name" {
  value = aws_dynamodb_table.my_table.name
}

output "dynamodb_table_arn" {
  value = aws_dynamodb_table.my_table.arn
}
output "cloudfront_origin_access_identity_iam_arn" {
  value = aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn
}