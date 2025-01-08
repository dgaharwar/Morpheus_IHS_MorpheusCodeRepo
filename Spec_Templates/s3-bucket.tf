###################
### Providers ###
###################

provider "aws" {
    ec2_metadata_service_endpoint_mode = "IPv4"
    region = local.cloud_options.region
}

#===========S3-Bucket ======#

resource "aws_s3_bucket" "s3bucket" {
    bucket = local.instance_options.name
    tags = merge(
        local.default_tags,
        {
            Terraform = "True"
        }
    )
}

output "bucket_name" {
    value = aws_s3_bucket.s3bucket.bucket
}

output "bucket_arn" {
    value = aws_s3_bucket.s3bucket.arn
}

output "bucket_id" {
    value = aws_s3_bucket.s3bucket.id
}