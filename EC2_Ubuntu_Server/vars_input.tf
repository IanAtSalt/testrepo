locals {
current_time = timestamp()
}
variable "Owner" {
description="Used to tag created resources. (Autopopulated by SRL)"
}
variable "instance_size" {
description = "EC2 instance size (see here - https://aws.amazon.com/ec2/instance-types/ )"
default = "t2.2xlarge"
}
variable "AWS_region" {
description="Autopopulated from SRL config."
}
variable "AWS_access_key" {
description="Autopopulated from SRL config."
}
variable "AWS_secret_key" {
description="Autopopulated from SRL config."
}