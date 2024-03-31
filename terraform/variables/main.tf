resource "local_file" "learning_vars" {
  filename = var.my_variable
  content = var.content
}
