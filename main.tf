resource "aws_s3_bucket" "project_bucket" {
  bucket_prefix = "shubh-cloud-project-"

  tags = {
    Name        = "AWS Cloud Infrastructure Project"
    Environment = "Practice"
    Project     = "Terraform"
  }
}