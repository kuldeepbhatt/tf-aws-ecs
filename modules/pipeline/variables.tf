variable "git_repository_name" {
  description = "This holds the code repository name on Github"
  default = "angular6-sample"
}


variable "git_repository_owner" {
  description = "This holds the value of the repository owner name"
  default = "kuldeepbhatt"
}

variable "cluster_name" {
  description = "The cluster_name"
}

variable "app_repository_name" {
  description = "ECR Repository name"
}

variable "app_service_name" {
  description = "Service name"
}

variable "git_repository_branch" {
  description = "Build branch aka Master"
}

variable "repository_url" {
  description = "The url of the ECR repository"
}

variable "region" {
  description = "The region to use"
  default     = "us-east-1"
}

variable "container_name" {
  description = "Container name"
}

variable "git_OAuthToken" {
  description = "Access Token to access github source from AWS"
  default = "32e144dfbe41115a6567f2446bc10ebbb1181269"
}


# Listener Application Load Balancer Port
variable "alb_port" {
  description = "Origin Application Load Balancer Port"
  default     = "4200"
}

