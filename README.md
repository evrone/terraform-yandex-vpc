# Yandex Cloud VPC Terraform module

Terraform module which creates VPC resources on Yandex Cloud.

## Usage
```hcl
module "vpc" {
  source  = ""
  version = "~> 0.0.1"

  name = "production"
  subnets = {
    private-ru-central1-a  = { zone = "ru-central1-a", cidr = "10.0.0.0/20" },
    private-ru-central1-b  = { zone = "ru-central1-b", cidr = "10.0.16.0/20" },
    private-ru-central1-c  = { zone = "ru-central1-c", cidr = "10.0.32.0/20" },
    database-ru-central1-b = { zone = "ru-central1-b", cidr = "10.0.48.0/20" },
    public-ru-central1-c   = { zone = "ru-central1-c", cidr = "10.0.64.0/20" },
  }

  labels = {
    owner       = "my_cool_company"
    project     = "awesme_project"
    environment = "production"
  }
}
```
