resource "aws_iam_role" "lambda_role" {
  name = "fulcrum2_lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_lambda_function" "fulcrum_load" {
  function_name = "fulcrum_load"
  runtime       = "python3.9"
  role          = aws_iam_role.lambda_role.arn
  handler       = "handler.lambda_handler"
  filename      = "${path.module}/../lambdas/fulcrum_load.zip"
}

resource "aws_lambda_function" "fulcrum_process" {
  function_name = "fulcrum_process"
  runtime       = "python3.9"
  role          = aws_iam_role.lambda_role.arn
  handler       = "handler.lambda_handler"
  filename      = "${path.module}/../lambdas/fulcrum_process.zip"
}
