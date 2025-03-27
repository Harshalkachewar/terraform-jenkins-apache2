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
      "echo 'redhat' | sudo -S apt update -y",
      "echo 'redhat' | sudo -S apt install apache2 -y",
      "echo 'redhat' | sudo -S systemctl start apache2",
      "echo 'redhat' | sudo -S systemctl enable apache2"
    ]

  }
}
