ami_id                 = "ami-0e449927258d45bc4"
instance_type          = "t2.micro"
security_group_ids     = ["sg-0d8b81676076cd7fd"]
key_name               = "private-keypair2"
subnet_id              = "subnet-016ac12bd2e03d8dc"
instance_profile_name  = "Demo-rule"
#name                   = "jenkins-ec2"
#project_name           = "DevOps"
user_data              = <<-EOF
  #!/bin/bash
  sudo yum update -y

  # Install Java 17 (Amazon Corretto)
  sudo amazon-linux-extras enable corretto17
  sudo yum install -y java-17-amazon-corretto

  # Install Jenkins
  wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
  sudo yum install -y jenkins

  # Enable and start Jenkins
  sudo systemctl enable jenkins
  sudo systemctl start jenkins
EOF
