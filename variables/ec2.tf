resource "aws_instance" "prav-terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.tf-allow-all.id] #we are associating the sg created with our instance
  tags = var.ec2_tags
  
}

resource "aws_security_group" "tf-allow-all" {
  name        = var.sg_name
  description = "Allow inbound traffic and all outbound traffic"
  
  egress {                  #outgoing or outbound traffic
    from_port        = var.egress_from_port #from port 0 to port 0 - meaning all ports
    to_port          = var.egress_to_port
    protocol         = var.protocol #means all protocols
    cidr_blocks      = var.cidr #internet traffic
  }

  ingress {              # ingress is inbound traffic -incoming
    from_port        = var.ingress_from_port #from port 0 to port 0 - meaning all ports
    to_port          = var.ingress_to_port
    protocol         = var.protocol #means all protocols
    cidr_blocks      = var.cidr #internet traffic
  }

  tags = var.sg_tags
}
