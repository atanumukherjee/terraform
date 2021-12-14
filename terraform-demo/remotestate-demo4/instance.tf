resource "aws_instance" "outputvariable" {
  tags          = { Name = "Output Variable" }
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.outputvariable.private_ip} >> private_ip.txt"

  }

}

output "ip" {
  value = aws_instance.outputvariable.public_ip
}