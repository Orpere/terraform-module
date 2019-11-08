resource "null_resource" "outputsStudy" {
  provisioner "local-exec" {
    command = "echo this is the  ${count.index} outputsStudy"
  }
  count = 2
}
