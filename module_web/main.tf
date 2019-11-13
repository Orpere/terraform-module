resource "null_resource" "outputstudy" {
  provisioner "local-exec" {
    command = "echo this is the  ${count.index} outputstudy"
  }
  count = 2
}
