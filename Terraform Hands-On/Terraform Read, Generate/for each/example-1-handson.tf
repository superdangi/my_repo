/*
resource "aws_iam_user" "IAM-User" {
  for_each = toset( ["user-01","user-02","user-03"] )
name = each.key
}
*/