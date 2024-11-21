variable "region" {
  description = "AWS Region for infrastructure deployment"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket for Terraform state"
  type        = string
  default     = "fulcrum2-tf-state"
}

variable "s3_bucket_region" {
  description = "Region of the S3 bucket"
  type        = string
}

variable "dynamodb_lock_table" {
  description = "DynamoDB table for Terraform state locking"
  type        = string
}

variable "redis_node_type" {
  description = "Instance type for Redis ElastiCache"
  type        = string
  default     = "cache.t2.micro"
}

variable "sms_phone_number" {
  description = "Phone number to send SMS notifications"
  type        = string
}
