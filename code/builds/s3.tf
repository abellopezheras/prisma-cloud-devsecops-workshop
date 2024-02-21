provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "4a56aca3-043e-4e1b-b18a-96d8c15569dc"
    git_commit           = "7666a4a1f53d1c07b7feb6e99105df9b60ba92d1"
    git_file             = "code/builds/s3.tf"
    git_last_modified_at = "2024-02-21 03:58:25"
    git_last_modified_by = "82832286+abellopezheras@users.noreply.github.com"
    git_modifiers        = "82832286+abellopezheras"
    git_org              = "abellopezheras"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
