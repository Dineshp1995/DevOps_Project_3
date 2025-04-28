ami_id                  = "ami-0b86aaed8ef90e45f"
instance_type           = "t2.micro"
key_name                = "private-keypair2"
subnet_id               = "subnet-016ac12bd2e03d8dc"
instance_profile_name   = "Demo-rule"
security_group_ids      = ["sg-0d8b81676076cd7fd"]
#vpc_id = "vpc-012046654f5e4ffa6"
enable_termination_protection = true
user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y wget unzip
    wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip
    unzip terraform_1.6.6_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    terraform -version
  EOF


tags = {
  Name        = "terraform-ec2"
  Environment = "dev"
  Role        = "Infrastructure"
}
