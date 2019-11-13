resource "null_resource" "modulestudy" {
  provisioner "local-exec" {
    command = "echo this is the  ${count.index} modulestudy"
  }
  count = 2
}
