resource "aws_dynamodb_table" "my_table" {
  name         = "my_table"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "Vacuna_ID"
    type = "S"
  }

  hash_key = "Vacuna_ID"

  tags = {
    Name        = "my_table"
    Environment = "dev"
  }
}

