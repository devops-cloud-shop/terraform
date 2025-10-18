resource "aws_route53_record" "roboshop" {
  count     = 4
  zone_id   = var.zone_id
  name      = "${var.instances[count.index]}.${var.domain_name}" #domain name -prav4cloud.online
  type      = "A"
  ttl       = 1
  records   = [aws_instance.prav-terraform[count.index].private_ip]
  allow_overwrite = true
}