sudo apt-get update
sudo apt-get install ruby
sudo apt-get install wget
cd /home/ubuntu

# Check this page for more AWS regions
# https://docs.aws.amazon.com/codedeploy/latest/userguide/resource-kit.html#resource-kit-bucket-names
wget https://aws-codedeploy-eu-west-2.s3.amazonaws.com/latest/install

chmod +x ./install
sudo ./install auto

sudo service codedeploy-agent start
sudo service codedeploy-agent status
