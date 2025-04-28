resource "aws_instance" "EC2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
 # count                  = length(var.instance_identifier)
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  disable_api_termination = var.enable_termination_protection
  iam_instance_profile = var.instance_profile_name
  user_data = var.user_data 
  tags = var.tags
  
}





