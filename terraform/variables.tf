variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
  
  validation {
    condition     = var.instance_type == "t2.micro"
    error_message = "Instance type must be t2.micro for free tier eligibility."
  }
}

variable "key_pair_name" {
  description = "Name of the existing key pair to use for the EC2 instance"
  type        = string
  default     = "CICD ami2"
  
  validation {
    condition     = length(var.key_pair_name) > 0
    error_message = "Key pair name cannot be empty."
  }
}

variable "volume_size" {
  description = "Size of the EBS volume in GB (free tier allows up to 30GB)"
  type        = number
  default     = 8
  
  validation {
    condition     = var.volume_size >= 8 && var.volume_size <= 30
    error_message = "Volume size must be between 8 and 30 GB for free tier eligibility."
  }
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
