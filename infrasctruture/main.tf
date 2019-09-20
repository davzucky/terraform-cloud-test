
variable "name" {
}

variable "env" {
}


resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }
  byte_length = 32
}

output "random" {
  value = "${random_id.random.hex}"
}

output "hello_world" {
  value = "Hello from ${var.env}, ${var.name}"
}

