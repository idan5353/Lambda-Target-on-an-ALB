# Define Permission for ALB to Invoke Lambda Function
resource "aws_lambda_permission" "allow_alb" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.example.function_name
  principal     = "elasticloadbalancing.amazonaws.com"
  source_arn    = aws_alb.example.arn
}
