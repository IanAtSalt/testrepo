resource "aws_instance" "SRL_UBUNTU" {
    ami = "ami-0117d177e96a8481c"
    instance_type = "t2.2xlarge"
    
    # VPC
    subnet_id = data.terraform_remote_state.my_vpc.outputs.Labnet1_id
    
    # Security Group
    
    # the Public SSH key
    key_name = data.terraform_remote_state.my_vpc.outputs.AWS_key_name

	root_block_device {
    volume_size           = "120"
    volume_type           = "gp2"
    delete_on_termination = "true"
  }
    
	
  	tags = {
      Name = "SRL_EC2_Ubuntu"
      Owner = "${var.Owner}"
      Creation_Date ="${local.current_time}"
  	}


}
