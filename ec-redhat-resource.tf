resource "aws_instance" "jenkins" {
  ami                    = data.aws_ami.jenkins.id
  instance_type          = var.my_instance_type
  user_data              = file("${path.module}/jenkins-install.sh")
  vpc_security_group_ids = [aws_security_group.ssh-port.id, aws_security_group.jenkins-port.id]
  key_name               = var.my_key

  tags = {
    "Name" = "jenkins-server"
  }
}
