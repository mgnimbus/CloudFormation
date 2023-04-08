# CloudFormation
AWS CloudFormation parameters

## Aws clod formation parameters are like variables where we nned to define
- Logical ID
- Type: DataType
- ParameterProperty: value

## parameter syntax

Parameters:
  **ParameterLogicalID:**
    Type: DataType
    ParameterProperty: value

### Eg:

Parameters:
  **InstanceTypeParameter:**
    Type: String
    Default: t2.micro
    AllowedValues:
      - t2.micro
      - m1.small
      - m1.large
    Description: Enter t2.micro, m1.small, or m1.large. Default is t2.micro.

### Referencing a parameter within a template

Ec2Instance:
  Type: AWS::EC2::Instance
  Properties:
    InstanceType:
      **Ref: InstanceTypeParameter**
    ImageId: ami-0ff8a91507f77f867

## AWS-specific parameter types
To specify parameters with AWS-specific types, a template user must enter existing AWS values that are in their AWS account. AWS CloudFormation validates these input values against existing values in the account. For example, with the AWS::EC2::VPC::Id parameter type, a user must enter an existing VPC ID that is in the account and region in which they are creating the stack.
AWS::EC2::AvailabilityZone::Name
An Availability Zone, such as us-west-2a.

AWS::EC2::Image::Id
An Amazon EC2 image ID, such as ami-0ff8a91507f77f867. Note that the AWS CloudFormation console doesn't show a drop-down list of values for this parameter type.

AWS::EC2::Instance::Id
An Amazon EC2 instance ID, such as i-1e731a32.

AWS::EC2::KeyPair::KeyName
An Amazon EC2 key pair name.

AWS::EC2::SecurityGroup::GroupName
An EC2-Classic or default VPC security group name, such as my-sg-abc.

AWS::EC2::SecurityGroup::Id
A security group ID, such as sg-a123fd85.

AWS::EC2::Subnet::Id
A subnet ID, such as subnet-123a351e.

AWS::EC2::Volume::Id
An Amazon EBS volume ID, such as vol-3cdd3f56.

AWS::EC2::VPC::Id
A VPC ID, such as vpc-a123baa3.

AWS::Route53::HostedZone::Id
An Amazon Route 53 hosted zone ID, such as Z23YXV4OVPL04A.

List<AWS::EC2::AvailabilityZone::Name>
An array of Availability Zones for a region, such as us-west-2a, us-west-2b.

List<AWS::EC2::Image::Id>
An array of Amazon EC2 image IDs, such as ami-0ff8a91507f77f867, ami-0a584ac55a7631c0c. Note that the AWS CloudFormation console doesn't show a drop-down list of values for this parameter type.

List<AWS::EC2::Instance::Id>
An array of Amazon EC2 instance IDs, such as i-1e731a32, i-1e731a34.

List<AWS::EC2::SecurityGroup::GroupName>
An array of EC2-Classic or default VPC security group names, such as my-sg-abc, my-sg-def.

List<AWS::EC2::SecurityGroup::Id>
An array of security group IDs, such as sg-a123fd85, sg-b456fd85.

List<AWS::EC2::Subnet::Id>
An array of subnet IDs, such as subnet-123a351e, subnet-456b351e.

List<AWS::EC2::Volume::Id>
An array of Amazon EBS volume IDs, such as vol-3cdd3f56, vol-4cdd3f56.

List<AWS::EC2::VPC::Id>
An array of VPC IDs, such as vpc-a123baa3, vpc-b456baa3.

List<AWS::Route53::HostedZone::Id>
An array of Amazon Route 53 hosted zone IDs, such as Z23YXV4OVPL04A, Z23YXV4OVPL04B

## Type string 
works as tf variables where you input string through parameter values.


## Properties

AllowedPattern
A regular expression that represents the patterns to allow for String or CommaDelimitedList types. When applied on a parameter of type String, the pattern must match the entire parameter value provided. When applied to a parameter of type CommaDelimitedList, the pattern must match each value in the list.

Required: No

AllowedValues
An array containing the list of values allowed for the parameter. When applied to a parameter of type String, the parameter value must be one of the allowed values. When applied to a parameter of type CommaDelimitedList, each value in the list must be one of the specified allowed values.

Required: No

ConstraintDescription
A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of [A-Za-z0-9]+ displays the following error message when the user specifies an invalid value:

Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+

By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message:

Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers

Required: No

Default
A value of the appropriate type for the template to use if no value is specified when a stack is created. If you define constraints for the parameter, you must specify a value that adheres to those constraints.

Required: No

Description
A string of up to 4000 characters that describes the parameter.

Required: No

MaxLength
An integer value that determines the largest number of characters you want to allow for String types.

Required: No

MaxValue
A numeric value that determines the largest numeric value you want to allow for Number types.

Required: No

MinLength
An integer value that determines the smallest number of characters you want to allow for String types.

Required: No

MinValue
A numeric value that determines the smallest numeric value you want to allow for Number types.

Required: No

NoEcho
Whether to mask the parameter value to prevent it from being displayed in the console, command line tools, or API. If you set the NoEcho attribute to true, CloudFormation returns the parameter value masked as asterisks (*****) for any calls that describe the stack or stack events, except for information stored in the locations specified below.


## SSM parameter types
SSM parameter types correspond to existing parameters in Systems Manager Parameter Store. You specify a Systems Manager parameter key as the value of the SSM parameter, and AWS CloudFormation fetches the latest value from Parameter Store to use for the stack. For more information about Systems Manager parameters, see Systems Manager Parameter Store in the AWS Systems Manager User Guide.

### Supported SSM parameter types

AWS CloudFormation supports the following SSM parameter types:

AWS::SSM::Parameter::Name
The name of a Systems Manager parameter key.

Use this parameter when you want to pass the parameter key. For example, you can use this type to validate that the parameter exists.

AWS::SSM::Parameter::Value<String>
A Systems Manager parameter whose value is a string. This corresponds to the String parameter type in Parameter Store.

AWS::SSM::Parameter::Value<List<String>> or AWS::SSM::Parameter::Value<CommaDelimitedList>
A Systems Manager parameter whose value is a list of strings. This corresponds to the StringList parameter type in Parameter Store.

AWS::SSM::Parameter::Value<AWS-specific parameter type>
A Systems Manager parameter whose value is an AWS-specific parameter type. For example, the following specifies the AWS::EC2::KeyPair::KeyName type:

AWS::SSM::Parameter::Value<AWS::EC2::KeyPair::KeyName>

AWS::SSM::Parameter::Value<List<AWS-specific parameter type>>
A Systems Manager parameter whose value is a list of AWS-specific parameter types. For example, the following specifies a list of AWS::EC2::KeyPair::KeyName types:

AWS::SSM::Parameter::Value<List<AWS::EC2::KeyPair::KeyName>>