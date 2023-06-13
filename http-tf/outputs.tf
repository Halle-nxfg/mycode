output "dnd5e"{
    value = jsondecode(data.http.dnd5e.response_body)
}
output "Races"{
    value = jsondecode(data.http.dnd5e_races.response_body)
}
output "Classes"{
    value = jsondecode(data.http.dnd5e_classes.response_body)
}

