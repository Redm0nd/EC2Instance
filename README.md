# EC2Instance
Launch an EC2 Instance via the CLI

1. Create a Keypair using `aws ec2 create-key-pair` 
2. Launch an instance using `aws ec2 run-instances`
3. Return the Public Dns Name using `aws ec2 describe-instances`
4. ssh in to the new instance


https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/create-key-pair.html
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/describe-instances.html

Further Reading:

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/authorizing-access-to-an-instance.html
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/authorize-security-group-ingress.html
