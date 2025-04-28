module "jenkins_instance" {
  source                 = "../../Module/ec2/v0"
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  security_group_ids     = var.security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  instance_profile_name  = var.instance_profile_name
  user_data              = var.user_data
  tags = {
   Name        = "jenkin-ec2"
   Environment = "dev"
   Role        = "Jenkins"
  }
}
