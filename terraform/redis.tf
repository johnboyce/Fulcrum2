resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = "fulcrum2-redis-subnet-group"
  subnet_ids = module.vpc.private_subnets
}

resource "aws_elasticache_cluster" "fulcrum2_redis" {
  cluster_id           = "fulcrum2-redis"
  engine               = "redis"
  node_type            = var.redis_node_type
  num_cache_nodes      = 1
  subnet_group_name    = aws_elasticache_subnet_group.redis_subnet_group.name
  parameter_group_name = "default.redis6.x"
}
