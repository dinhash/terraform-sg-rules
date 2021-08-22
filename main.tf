provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_security_group_rule" "example" {
  count             = length(var.cidr_block)
  type              = "ingress"
  from_port         = port_no
  to_port           = port_no
  protocol          = "tcp"
  cidr_blocks       = [element(var.cidr_block, count.index)]
  security_group_id = "sg-123456"
}


# element(var.cidr_block, count.index)