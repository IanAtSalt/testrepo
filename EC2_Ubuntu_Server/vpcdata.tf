data "terraform_remote_state" "my_vpc" {
  backend = "local"

  config = {
    path = "../AWS_VPC/terraform.tfstate"
  }
}
