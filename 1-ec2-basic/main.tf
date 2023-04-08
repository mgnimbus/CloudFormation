


resource "aws_cloudformation_stack" "network" {
  name          = "networking-stack"
  template_body = file("${path.module}/4-ec2-with-ssh-eip.yml")
  tags = {
    "Source" = "Terraform"
  }
}

output "ID" {
  value = aws_cloudformation_stack.network.id
}
