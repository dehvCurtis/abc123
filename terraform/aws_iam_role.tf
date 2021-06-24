resource "aws_iam_role" "krkn_role" {
  name = "krkn_role"

  assume_role_policy = jsonencode({ # jsonencode to convert to json
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    aws_iam_role = "krkn_role"
  }
}
