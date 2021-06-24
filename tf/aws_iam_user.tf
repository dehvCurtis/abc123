resource "krkn_user" "krkn_user" {
  name = "krkn_user"
  path = "/krkn_users/"
  policy = aws_iam_policy
  tags = {
    krkn_user = "krkn_user"
  }
}