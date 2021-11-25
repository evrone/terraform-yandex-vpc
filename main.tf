resource "yandex_vpc_network" "default" {
  name = var.name

  labels = var.labels
}

resource "yandex_vpc_subnet" "default_subnets" {
  for_each = var.subnets

  network_id     = yandex_vpc_network.default.id
  name           = each.key
  zone           = each.value.zone
  v4_cidr_blocks = [each.value.cidr]

  labels = var.labels
}
