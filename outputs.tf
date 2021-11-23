# VPC id
output "vpc_id" {
  description = "The ID of the VPC"
  value = concat(yandex_vpc_network.default.*.id, [""])[0]
}
