resource "local_file" "name1" {
    content = "Teste Random String with implicit : ${random_string.name2.id}"
    filename = "implicit.txt"
    depends_on = [
      random_string.name2
    ]
}

resource "random_string" "name2" {
  length = 20
}

