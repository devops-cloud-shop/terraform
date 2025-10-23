data "aws_ami" "sarigama" {
  most_recent = true
  owners      = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

output "ami_id" {
    value = data.aws_ami.sarigama.id
}

data "aws_instance" "server-1" {
    instance_id = "i-080d5918fba09c864"
}

output "server_info" {
    value = data.aws_instance.server-1.id 
}