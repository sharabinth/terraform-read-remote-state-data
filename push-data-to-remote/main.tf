terraform {
  backend "atlas" {
    name = "maha-sharabinth/dev-random-pet"
  }
}

resource "random_pet" "name" {}

output "pet_name" {
  value = "${random_pet.name.id}"
}
