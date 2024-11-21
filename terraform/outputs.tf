output "api_gateway_endpoint" {
  description = "API Gateway endpoint URL"
  value       = aws_api_gateway_rest_api.fulcrum2_api.execution_arn
}

output "redis_endpoint" {
  description = "Redis ElastiCache endpoint"
  value       = aws_elasticache_cluster.fulcrum2_redis.cache_nodes[0].address
}
