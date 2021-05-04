resource "aws_instance" "terratest" {
ami = "ami-0ffc7af9c06de0077"
instance_type = "t2.micro"
count = 2
associate_public_ip_address = "true"
subnet_id = "subnet-4687652d"
security_groups = ["${aws_security_group.ingress-all-test.id}"]
key_name = "nithinmumbai"
  root_block_device {
    volume_size           = "40"
    volume_type           = "gp2"
    delete_on_termination = true
  }
    tags = {
      Name  = "Terraform-${count.index + 1}"
    }
}

