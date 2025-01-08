resource "aws_iam_user" "iamuser" {
    name = local.cloud_options.iam_user_name
    path = "/"
    
    tags = merge(
        local.default_tags,
        {
            Terraform = "True"
        }
    )
}

#=========IAM user policy======#

resource "aws_iam_user_policy" "user-policy" {
    name = local.cloud_options.iam_user_name
    user = aws_iam_user.iamuser.name

# Terraform's "jsonencode" function converts a

# Terraform expression result to valid JSON syntax.

policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
    {
        Action = [
            "s3:GetObject",
            "s3:PutObject",
            "s3:DeleteObject",
            "s3:ListBucket"
        ]
        Effect = "Allow"
        Resource = [
            "arn:aws:s3:::${aws_s3-bucket.s3bucket.id}",
            "arn:aws:s3:::${aws_s3-bucket.s3bucket.id}/*"
        ]
    }
    ]
})

}