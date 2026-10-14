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
  policy      = data.aws_iam_policy_document.s3_read_access.json
}
