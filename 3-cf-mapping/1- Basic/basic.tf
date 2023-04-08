provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-1"
}


resource "aws_cloudformation_stack" "basic" {
  name          = "CloudFormationTf"
  template_body = file("${path.module}/basic.yml")
  parameters = {
    "KeyName" = "cfkey"
  }

  tags = {
    "Source" = "Terraform"
  }
}

output "ID" {
  value = aws_cloudformation_stack.basic.id
}

resource "aws_cloudformation_stack" "basic2" {
  name          = "CloudFormationTf"
  template_body = file("${path.module}/basic.yml")
  parameters = {
    "KeyName" = "cfkey"
  }
  tags = {
    "Source" = "Terraform"
  }
  provider = aws.west
}

output "ID2" {
  value = aws_cloudformation_stack.basic2.id
}
