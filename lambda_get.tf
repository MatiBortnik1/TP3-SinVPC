resource "aws_lambda_function" "get_lambda" {
  filename         = "${path.module}/python/lambda_get.zip"
  function_name    = "GetVacunasFunction"
  role             = data.aws_iam_role.role.arn
  handler          = "lambda_get.lambda_handler"
  runtime          = "python3.12"
  timeout          = 10

  environment {
    variables = {
      TABLE_NAME = var.VacunasTable
    }
  }

  tags = {
    Name = "GetVacunasFunction"
  }
}
