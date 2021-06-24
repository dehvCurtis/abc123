resource "abc123_user" "abc123_user" {
  name = "abc123_user"
  path = "/abc123_users/"
  policy = aws_iam_policy
  tags = {
    krkn_user = "abc123_user"
  }
}
