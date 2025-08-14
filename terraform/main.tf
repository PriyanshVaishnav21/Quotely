resource "aws_instance" "quotely-server" {

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.quotely-sg.id]

   root_block_device {
    volume_size = 25
  }


  user_data = file("${path.module}/user_data.sh")
  tags = {
    Name = var.instance_name
  }
}       