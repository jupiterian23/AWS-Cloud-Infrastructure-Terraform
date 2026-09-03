output "s3_bucket_name" {
  description = "Name of the S3 bucket created by Terraform"
  value       = aws_s3_bucket.project_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.project_bucket.arn
}