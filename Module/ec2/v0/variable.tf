variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key name for EC2 access"
  type        = string
}

variable "tags" {
  description = "Default tags for EC2 instances"
  type        = map(string)
}

variable "enable_termination_protection" {
  description = "Flag to enable termination protection on EC2 instances"
  type        = bool
  default     = true
}

variable "subnet_id" {
  description = "List of subnet IDs for the EC2 instances"
  type        = string
}



variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "instance_profile_name" {
  description = "Instance profile name (IAM role)"
  type        = string
}
variable "user_data" {
  type    = string
  default = null
}
# variable "instance_identifier" {
#   type        = list(string)
#   default     = [""]
#   description = "AWS instance_identifier"
# }
