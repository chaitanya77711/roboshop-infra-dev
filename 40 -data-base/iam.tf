resource "aws_iam_role" "mysql_pass" {
  name = local.mysql_pass

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
      }
    ]
  })

  tags = merge(
    {
       Name = local.mysql_pass
    },
    local.local.common_tags
  )
}

resource "aws_iam_policy" "mysql_pass_polcy" {
  name        = "s3-read-access-policy"
  description = "a policy for mysql pass"
  policy      = file("mysql-pass.json")
}

resource "aws_iam_role_policy_attachment" "mysql_policy_attach" {
  role       = aws_iam_role.mysql_pass.name
  policy_arn = aws_iam_policy.mysql_pass_polcy.arn
}

resource "aws_iam_instance_profile" "mysql" {
  name = "${var.project}-${var.environment}-mysql"
  role = aws_iam_role.mysql.name
}