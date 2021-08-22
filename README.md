# terraform-sg-rules
The repo consists simple terraform code for updating security group rules

The cidr_block under resource "aws_security_group_rule" in main.tf accepts only list datatype and hence [] is mandatory 
