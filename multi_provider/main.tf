resource "local_file" "name" {
    content = "this is HCL"
    filename = "sample.xt"
}

resource "random_string" "name" {
  length = 10
}