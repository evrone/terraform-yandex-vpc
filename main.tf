resource "yandex_vpc_network" "default" {
  name = var.name
}

resource "yandex_vpc_subnet" "default-subnets" {
  for_each       = var.subnets
  network_id     = yandex_vpc_network.default.id
  labels         = var.labels
  v4_cidr_blocks = each.value
  zone           = each.key
}
