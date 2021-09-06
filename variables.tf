variable "name" {
  type    = string
  default = "vpc"
}

variable "subnets" {
  type = map(object({
    zone = string
    cidr = string
  }))
}

variable "labels" {
  type        = map(string)
  description = "Labels to mark resources."
  default     = {}
}
