#S3 Bucket on Which we will add policy
resource "aws_s3_bucket" "s3_private_bucket" {
  bucket        = var.private_bucket_name
  force_destroy = var.bucket_force_destroy

}



resource "aws_s3_bucket_versioning" "private_bucket_versioning" {
  bucket = aws_s3_bucket.s3_private_bucket.id
  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket                  = aws_s3_bucket.s3_private_bucket.id
  block_public_acls       = var.s3_block_public_acls
  block_public_policy     = var.s3_block_public_policy
  ignore_public_acls      = var.s3_ignore_public_acls
  restrict_public_buckets = var.s3_restrict_public_buckets
}


########### S3 Public Bucket ################3

resource "aws_s3_bucket" "s3_public_bucket" {
  bucket        = var.public_bucket_name
  force_destroy = var.bucket_force_destroy

}



resource "aws_s3_bucket_versioning" "punlic_bucket_versioning" {
  bucket = aws_s3_bucket.s3_public_bucket.id
  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_allow" {
  bucket                  = aws_s3_bucket.s3_public_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

