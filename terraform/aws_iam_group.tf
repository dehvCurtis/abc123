resource "aws_iam_group" "abc123_devs" {
  name = "abc123_devs"
  path = "/developers/"
}

resource "aws_iam_policy" "abc123-policy" {
  name        = "abc123-policy"
  description = "policy decsription"
  policy      = aws_iam_policy
}

resource "aws_iam_group_policy_attachment" "attach" {
  group      = aws_iam_group.group.name
  policy_arn = aws_iam_policy.policy.arn
}
