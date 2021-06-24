resource "aws_iam_group" "krkn_devs" {
  name = "krkn_devs"
  path = "/developers/"
}

resource "aws_iam_policy" "krkn-policy" {
  name        = "krkn-policy"
  description = "policy decsription"
  policy      = aws_iam_policy
}

resource "aws_iam_group_policy_attachment" "attach" {
  group      = aws_iam_group.group.name
  policy_arn = aws_iam_policy.policy.arn
}
