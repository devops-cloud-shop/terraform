# resource "aws_instance" "prav-terraform" {
#     ami = data.aws_ami.joindevops.id
#     instance_type = "t3.micro"
#     vpc_security_group_ids = [aws_security_group.tf_allow_all.id]
#     tags = {
#         Name = "prav-terraform"
#         Terraform = "true"
#     }
# }

# resource "aws_security_group" "tf_allow_all" {
#   name   = "tf_allow-all"

#   egress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   ingress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   tags = {
#     Name = "tf_allow-all"
#   }

# }