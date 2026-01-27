resource "aws_iam_user" "hello1" {
  name = "kaizen1"
}

resource "aws_iam_user" "hello2" {
  name = "kaizen2"
}

resource "aws_iam_user" "hello3" {
  name = "my-user"
}
resource "aws_iam_group" "group1" {
  name = "devops"
}
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hello1.name,
    aws_iam_user.hello2.name,
    aws_iam_user.hello3.name,
  ]

  group = aws_iam_group.group1.name
}
