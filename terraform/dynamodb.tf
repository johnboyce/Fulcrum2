resource "aws_dynamodb_table" "fulcrum_table" {
  name           = "fulcrum2-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "fulcrumId"

  attribute {
    name = "fulcrumId"
    type = "S"
  }

  ttl {
    attribute_name = "TTL"
    enabled        = true
  }
}
