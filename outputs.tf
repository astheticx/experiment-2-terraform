output "vpc_id" {
  value = module.network.vpc_id
}

output "web_public_ips" {
  value = module.compute.web_public_ips
}

output "db_private_ip" {
  value = module.compute.db_private_ip
}

output "web_instance_ids" {
  value = module.compute.web_instance_ids
}

output "db_instance_id" {
  value = module.compute.db_instance_id
}