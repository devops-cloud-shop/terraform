variable "instances" {
    default = [ "mysql", "mongodb"] #we use toset here, all our instances are t3.micro.
    # default = {
    #     mysql = "t3.small"  #each.key - each.value
    #     redis = "t3.micro"
    #     mongodb = "t3.micro"
    #     user = "t3.micro"
    # }
}

variable "zone_id" {
    default = "Z03076873JCXQT5FHA6WQ"
}

variable "domain_name" {
    default = "prav4cloud.online"
}