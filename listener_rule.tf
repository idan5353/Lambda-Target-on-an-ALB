# Define Listener Rule to Forward Requests to Lambda
resource "aws_alb_listener_rule" "lambda" {
  listener_arn = aws_alb_listener.http.arn
  priority     = 1

  action {
    type = "forward"
    forward {
      target_group_arn = aws_alb_target_group.lambda.arn
    }
  }

  condition {
    path_pattern {
      values = ["/"]
    }
  }
}
