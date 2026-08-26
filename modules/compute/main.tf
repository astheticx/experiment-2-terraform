resource "aws_instance" "web" {
  count = var.web_count

  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.web_security_group_id]
  key_name               = var.key_name

  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "Hello from Web Server ${count.index + 1}" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "exp2-web-${count.index + 1}"
    Tier = "web"
  }
}

resource "aws_instance" "db" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.db_security_group_id]
  key_name               = var.key_name

  tags = {
    Name = "exp2-db"
    Tier = "database"
  }
}