variable "health_check" {
  default = {
    enabled = true
    healthy_threshold = 2 # Continuously two health checks are success then you can consider as healthy
    interval = 15 # For every 15 seconds will check health of the component
    matcher = "200-299" # Any response code within this range consider it as success
    path = "/health" # will get the response if component is healthy
    port = 8080
    protocol = "HTTP"
    timeout = 5 # if there is no response within 5 seconds then consider it as failure
    unhealthy_threshold = 3 # If three consecutive requests are failed then consider as failure
  }
}

variable "project_name" {
}

variable "env" {
}

variable "common_tags" {
}

variable "target_group_port" {
    default = 8080
}

variable "target_group_protocol" {
  default = "HTTP"
}

variable "vpc_id" {
}

variable "image_id" {
  
}

variable "instance_type" {
  default = "t2.micro"
}

variable "security_group_id" {
  
}

variable "launch_template_tags" {
  default = []
}

variable "user_data" { # Here user_data is optional
  default = ""
}

variable "max_size" {
  default = 10
}

variable "min_size" {
  default = 1
}

variable "desired_capacity" {
  default = 2
}

variable "health_check_grace_period" {
  default = 300
}

variable "health_check_type" {
  default = "ELB"
}

variable "vpc_zone_identifier" {
  type = list
}

variable "tag" {
 default = [] 
}

variable "autoscaling_cpu_target" {
  default = 70.0
}

variable "alb_listener_arn" {
  
}

variable "rule_priority" {
  
}

variable "host_header" {
  
}

