provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-1"
}


resource "aws_cloudformation_stack" "maps" {
  name          = "CloudFormationTf"
  template_body = file("${path.module}/maps.yml")
  parameters = {
    "KeyName"   = "cfkey"
    Environment = "dev"
  }

  tags = {
    "Source" = "Terraform"
  }
}

output "ID" {
  value = aws_cloudformation_stack.maps.id
}

resource "aws_cloudformation_stack" "maps2" {
  name          = "CloudFormationTf"
  template_body = file("${path.module}/maps.yml")
  parameters = {
    "KeyName"   = "cfkey"
    Environment = "prod"
  }
  tags = {
    "Source" = "Terraform"
  }
  provider = aws.west
}

output "ID2" {
  value = aws_cloudformation_stack.maps2.id
}
