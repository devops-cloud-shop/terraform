resource "aws_instance" "prav-terraform" {
  ami           = local.ami_id
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.tf-allow-all.id] #we are associating the sg created with our instance

  tags = local.ec2_tags
}

resource "aws_security_group" "tf-allow-all" {
  name        = "${local.common_name}-tf-allow-all"
  description = "Allow inbound traffic and all outbound traffic"
  
  egress {                  #outgoing or outbound traffic
    from_port        = 0 #from port 0 to port 0 - meaning all ports
    to_port          = 0
    protocol         = "-1" #means all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet traffic
  }

  ingress {              # ingress is inbound traffic -incoming
    from_port        = 0 #from port 0 to port 0 - meaning all ports
    to_port          = 0
    protocol         = "-1" #means all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet traffic
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${local.common_name}-tf-allow-all"
      Purpose = "locals"
    }
  )
    
  }
