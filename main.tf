resource "aws_iam_role" "terraform_test_role" {
  name = "terraform_test_role"

assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })


  tags = {
    name = "terraform_test_role"
  }
}
