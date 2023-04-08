#1-parameter-basic.yml



resource "aws_cloudformation_stack" "tf" {
  name = "tf-farm-summer"

  parameters = {
    "SSHKeyName"       = "cfkey"
    "AvailabilityZone" = "us-east-1a"
    #"InstanceType"     = "t3.micro"
  }

  template_body = file("${path.module}/4-parameter-InstanceType-SSM.yml")

  tags = {
    "Source"      = "Terraform"
    "Environment" = "Test"
  }
}

output "ID" {
  value = aws_cloudformation_stack.tf.id
}
