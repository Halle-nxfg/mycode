/* Alta3 Research - rzfeeser@alta3.com
Working with "for_each" within a null_resource */

/* Terraform block */
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

/* provider block */
provider "docker" {
}

/* a list of local variables */
locals {
  avengers = {"ironman"= {extport = 8000, desc = "hero"}
              "captain_america" = {extport = 8001, desc = "hero"}
              "thanos" = {extport = 8002, desc = "villain"}
              "venom" = {extport = 8003, desc = "anti-hero"}
             }
}

resource "docker_image" "nginx" {   
    name         = "nginx:1.19.6"
  keep_locally = true    // keep image after "destroy"
}

resource "docker_container" "avengers" {
  for_each = local.avengers 
  /* triggers allows specifying a random set of values that when
     changed will cause the resource to be replaced */
    name = each.key  
    image = docker_image.nginx.image_id
    ports {
        internal = 80
        external = each.value.extport
    }

}
