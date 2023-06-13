# The following example shows how to issue an HTTP GET request supplying
# an optional request header.
data "http" "iss" {
  url = "http://api.open-notify.org/astros.json"      // API to send HTTP GET to

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

data "http" "dnd5e"{
  url = "https://www.dnd5eapi.co/api/"
}
data "http" "dnd5e_races"{
  url = "https://www.dnd5eapi.co/api/races"
}

data "http" "dnd5e_classes"{
  url = "https://www.dnd5eapi.co/api/classes"
}



