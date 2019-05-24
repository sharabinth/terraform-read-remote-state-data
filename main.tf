
data "terraform_remote_state" "my_pet" {
  backend = "remote"

  config = {
    organization = "maha-sharabinth"

    workspaces {
      name = "dev-random-pet"
    }
  }
}


# Terraform <= 0.11
resource "null_resource" "pet" {
  provisioner "local-exec" {
    command = "echo My Pet Name is ${data.terraform_remote_state.my_pet.pet_name}"
  }
}

output "remote_pet_name" {
  value = "${data.terraform_remote_state.my_pet.pet_name}"
}
