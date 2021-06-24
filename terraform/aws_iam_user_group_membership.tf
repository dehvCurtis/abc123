resource "aws_iam_user" "krkn_user" {
  name = "krkn_user"
}

resource "aws_iam_user_group_membership" "krkn_dev_membership" {
  user = "krkn_user"

  groups = [
    aws_iam_group.krkn_devs,
  ]
}
