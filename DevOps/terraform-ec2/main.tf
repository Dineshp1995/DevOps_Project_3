module "terraform-ec2" {
  source = "../../Module/ec2/v0"  # Path to your module
  ami_id                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  enable_termination_protection = var.enable_termination_protection
  subnet_id            = var.subnet_id
  security_group_ids     = var.security_group_ids
  instance_profile_name  = var.instance_profile_name
  tags = {
    Name        = "terraform-ec2"
    Environment = "dev"
    Role        = "Infrastructure"
  }
}



  
