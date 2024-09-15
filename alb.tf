# Define Application Load Balancer
resource "aws_alb" "example" {
  name               = "example-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = aws_subnet.public[*].id

  enable_deletion_protection = false
  enable_http2               = true
  idle_timeout               = 60
}

# Define HTTP Listener for ALB
resource "aws_alb_listener" "http" {
  load_balancer_arn = aws_alb.example.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "No Lambda function configured yet."
      status_code  = "200"
    }
  }
}
