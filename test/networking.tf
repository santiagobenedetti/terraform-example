# Description: This file is used to create the security group
#
# In this example, we are creating a security group with the name "TEST_SG" 
# and allowing all traffic in the 443 port (HTTPS)
module "terraform-sg" {
  source = "terraform-aws-modules/security-group/aws"

  name                = "TEST_SG"
  description         = "TEST sg created with tf"

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp"]

  egress_cidr_blocks  = ["0.0.0.0/0"]
  egress_rules        = ["https-443-tcp"]
}