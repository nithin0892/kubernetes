resource "aws_security_group" "ingress-all-test" {
name = "Automation_Devops-1"
vpc_id = "vpc-ffe32694"
 ingress {
  cidr_blocks = ["0.0.0.0/0"]
  from_port = 22
  to_port = 22
  protocol = "tcp"
 }
// Terraform removes the default rule
  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
  }
}

