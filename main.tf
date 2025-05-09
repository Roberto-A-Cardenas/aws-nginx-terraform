provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "nginx" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name      = "terraform-key" 

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install nginx1 -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              echo "Welcome to your AWS Nginx server!" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "nginx-server"
  }
}
