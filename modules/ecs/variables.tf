variable "cluster_name" {
  description = "The cluster_name"
}
variable "app_repository_name" {
  description = "Name of ECR Repository"
  default     = "angular6-sample"
}

variable "container_name" {
  description = "Container name"
}
# Desired CPU
variable "desired_task_cpu" {
  description = "Desired CPU to run your tasks"
  default     = "256"
}

# Desired Memory
variable "desired_task_memory" {
  description = "Desired memory to run your tasks"
  default     = "512"
}

# Target Group Load Balancer Port
variable "container_port" {
  description = "Destination Application Load Balancer Port"
  default     = "4200"
}
variable "desired_tasks" {
  description = "Number of containers desired to run the application task"
}


variable "app_sg_id" {
  description = "App Security Group"
}

variable "alb_sg_id" {
  description = "Application Load Balancer Security Group"
}

variable "ecs_sg_id" {
  description = "ECS Security Group"
}

variable "security_groups_ids" {
  type        = "list"
  description = "Security group lists"
}

variable "alb_port" {
  description = "ALB listener port"
}
variable "availability_zones" {
  type        = "list"
  description = "The azs to use"
}


variable "vpc_id" {
  description = "The VPC id"
}

variable "networkMode" {
  description = "The network mode"
  default = "awsvpc"
}
