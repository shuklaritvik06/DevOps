variable "string_var" {
  type    = string
  default = "Hello"
}

variable "bool_var" {
  type    = bool
  default = true
}

variable "list_var" {
  type    = list(string)
  default = ["Hello"]
}

variable "map_var" {
  type = map(any)
  default = {
    key = "value"
  }
}

variable "tuple_var" {
  type    = tuple([bool, number, string])
  default = [true, 1, "hehe"]
}

variable "set_var" {
  type    = set(number)
  default = [1, 2, 3]
}

variable "object_var" {
  type = object({
    name = string #
  })
  default = {
    name = "Ritvik"
  }
}
