# Define Target Group for Lambda
resource "aws_alb_target_group" "lambda" {
  name        = "lambda-target-group"
  port        = 80
  protocol    = "HTTP"
  target_type = "lambda"

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}
