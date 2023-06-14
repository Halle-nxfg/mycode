locals {
  rgs1 = {
    "alpha"   = "eastus"
    "bravo"   = "southindia"
    "charlie" = "westus2"
  }
}

resource "null_resource" "part1_rgs" {
  for_each = tomap(local.rgs1)

  triggers = {
    name   = "each.key"
    region = "each.value"
  }
}
