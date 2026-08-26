output "web_instance_ids" {
  value = aws_instance.web[*].id
}

output "web_public_ips" {
  value = aws_instance.web[*].public_ip
}

output "db_instance_id" {
  value = aws_instance.db.id
}

output "db_private_ip" {
  value = aws_instance.db.private_ip
}