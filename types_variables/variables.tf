variable "filename1" {
    type = string
    default = "sample.txt"
}

/*
variable "content1" {
    type = number
    default = 80
  }
*/

/*
variable "content1" {
    type = list(string)
    default = ["black","blue","red"]
}
*/

/*
variable "content1" {
    type = tuple([string,bool,number])
    default = ["black",true,2]
}
*/

variable "content1" {
  type = map
  default = {name= "Diogo", age = 32}
}
