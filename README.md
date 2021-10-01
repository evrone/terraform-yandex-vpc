# Yandex Cloud VPC Terraform module

Terraform module which creates VPC resources on Yandex Cloud.

## Usage
```hcl
module "vpc" {
  source  = ""
  version = "~> 0.0.1"

  name = "production"
  subnets = {
    // Public subnets with public IP addresses.
    public-ru-central1-a  = { zone = "ru-central1-a", cidr = "10.0.0.0/20" },
    public-ru-central1-b  = { zone = "ru-central1-b", cidr = "10.0.16.0/20" },
    public-ru-central1-c  = { zone = "ru-central1-c", cidr = "10.0.32.0/20" },

    // Private subnets have Internet access through NAT.
    private-a-ru-central1-a = { zone = "ru-central1-a", cidr = "10.0.48.0/20" },
    private-a-ru-central1-b = { zone = "ru-central1-b", cidr = "10.0.48.0/20" },
    private-a-ru-central1-c = { zone = "ru-central1-c", cidr = "10.0.48.0/20" },
    
    // Private subnets without Internet access.
    private-b-ru-central1-a = { zone = "ru-central1-a", cidr = "10.0.64.0/20" },
    private-b-ru-central1-b = { zone = "ru-central1-b", cidr = "10.0.64.0/20" },
    private-b-ru-central1-c = { zone = "ru-central1-c", cidr = "10.0.64.0/20" },
  }

  labels = {
    owner       = "my_cool_company"
    project     = "awesme_project"
    environment = "production"
  }
}
```
