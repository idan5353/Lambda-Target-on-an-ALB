# Define Lambda Function
resource "aws_lambda_function" "example" {
  filename         = "lambda_function.zip"
  function_name    = "example_lambda"
  role             = aws_iam_role.lambda_exec.arn
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"

  source_code_hash = filebase64sha256("lambda_function.zip")

  environment {
    variables = {
      BUCKET_NAME = "check53535"
      OBJECT_KEY  = "website.html"
    }
  }
}
