resource "aws_lambda_function" "post_lambda" {
  filename         = "${path.module}/python/lambda_post.zip"
  function_name    = "PostVacunaFunction"
  role             = data.aws_iam_role.role.arn
  handler          = "lambda_post.lambda_handler"
  runtime          = "python3.12"
  timeout          = 10

  environment {
    variables = {
      TABLE_NAME = var.VacunasTable
    }
  }

  tags = {
    Name = "PostVacunaFunction"
  }
}