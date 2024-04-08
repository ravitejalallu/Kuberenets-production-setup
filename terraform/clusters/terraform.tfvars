aws_region = "us-east-1"
private_subnet_ids = [
 "subnet-05bdaca191d217ad3",
  "subnet-0e21b003b9c99635f",
  "subnet-0f9bdc3dbb3667231",
]
public_subnet_ids = [
  "subnet-0db368773982ea869",
  "subnet-0eb52f7d2bcb1c806",
  "subnet-096a7ce490199d747",
]
vpc_id                = "vpc-08220ad8e0458528c"
clusters_name_prefix  = "demo-cluster-kubernetes-aws"
cluster_version       = "1.29"
workers_instance_type = "t2.micro"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10
