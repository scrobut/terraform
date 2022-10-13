resource "random_integer" "rint" {
    min = 50
    max = 70
}

resource "random_string" "rstring" {
  length = 15
}

output "name" {
  value = random_integer.rint.result
}

output "nameString" {
  value = random_string.rstring.result
}