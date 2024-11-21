resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name


  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = var.dynamodb_lock_table
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
