# VPC id
output "vpc_id" {
  description = "The ID of the VPC"
  value = yandex_vpc_network.default.id
}
