resource "yandex_vpc_network" "vpc" {
  name = var.name
}

resource "yandex_vpc_subnet" "vpc_subnets" {
  for_each = var.subnets

  network_id     = yandex_vpc_network.vpc.id
  name           = each.key
  v4_cidr_blocks = [each.value.cidr]
  zone           = each.value.zone

  labels = var.labels
}
