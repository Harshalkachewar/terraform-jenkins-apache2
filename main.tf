provider "null" {}

resource "null_resource" "install_apache" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "harshal"
      password = "redhat"
      host     = "192.168.180.129"
    }

    inline = [
      "sudo apt update -y",
      "sudo apt install apache2 -y",
      "sudo systemctl start apache2",
      "sudo systemctl enable apache2"
    ]
  }
}
