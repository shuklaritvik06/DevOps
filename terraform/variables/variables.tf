variable "my_variable" {
  description = "Filename that i have write"
  default = "/home/ritvik/DevOps/terraform/variables/devops_learn.txt"
  type = string
}
variable "content" {
  description = "This is the content"
  default = "My Content"
}
variable "user_name" {}