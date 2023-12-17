variable "aws_region" {
  type    = string
  default = "us-east-2"

}
variable "my_instance_type" {
  description = "the type of instance"
  type        = string
  default     = "t2.medium"

}
variable "my_key" {
  type    = string
  default = "jobkey"

}
