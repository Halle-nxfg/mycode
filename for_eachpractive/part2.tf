locals {
  rgs2 = {
    "alpha" = { "region" = "eastus"
    "vnet" = "omega" }
    "bravo" = { "region" = "southindia"
    "vnet" = "psi" }
    "charlie" = { "region" = "westus2"
    "vnet" = "chi" }
  }
}

resource "null_resource" "part2_rgs" {
  for_each = local.rgs2

  triggers = {
    name   = "each.key"          // alpha, bravo, charlie
    region = "each.value.region" // eastus, southindia, westus2
  }
}

resource "null_resource" "part2_vnets" {
  for_each = local.rgs2
  triggers = {
    name   = "each.key.vnet"   // use value of "vnet" above
    region = "each.key.region" // use value of "region" above
  }
}
