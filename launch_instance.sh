#!/bin/bash
# Ask the User their desired Key Pair name
echo "Hi! Tell me your name, and I'll launch an instance for you!"
read Key
aws ec2 create-key-pair --key-name $Key --query KeyMaterial --output text > $Key.pem
chmod 400 "$Key.pem"
echo "Okay $Key I've created a keypair for you and named it after you, $Key.pem"
InstanceId=`aws ec2 run-instances --image-id resolve:ssm:/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --instance-type t2.micro --key-name $Key --query 'Instances[*].InstanceId[]' --output text`
echo "Your new Instance Id is: $InstanceId"
sleep 3
PublicDnsName=`aws ec2 describe-instances --instance-id $InstanceId --query 'Reservations[*].Instances[*].PublicDnsName[]' --output text`
echo "The address you can access your instance from anywhere is: $PublicDnsName"
sleep 3
echo "Okay let's try and access the EC2 instance, it may not be awake yet..."
sleep 3
echo "So now we wait for your new Virtual Machine in AWS's Data Centre to start"
sleep 5
echo "$Key can you tell me what EC2 stands for?"
sleep 4
echo "Can anyone??!"
sleep 3
echo "you're on mute! - feel free to unmute yourself"
sleep 1
echo "Anyone? Come on :)"
sleep 5
echo "That's correct -> Elastic Compute Cloud"
sleep 3
echo "Okay almost there $Key, your EC2 VM has been created in your VPC"
sleep 5
echo "Final Question, what does VPC stand for? - Who knows?"
sleep 8
echo "Nice work $Key, VPC stands for Virtual Private Cloud"
sleep 2
echo "Okay let's give this a try"
sleep 1
echo "What i'm going to do is run the command to SSH in to the instance using it's KeyPair and Public Dns Name from above"
sleep 3
echo "Okay lets see....."
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "executing the 'ssh -o -i "$Key.pem" ec2-user@$PublicDnsName' command..."
sleep 2
ssh -o "StrictHostKeyChecking no" -i "$Key.pem" ec2-user@$PublicDnsName
