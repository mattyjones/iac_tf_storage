# Configure the AWS Provider
#

# Drop the following variables in your shell to provide terraform with the necessary credentials. If you don't set the default region then it will be set to **us-east-1** for you.
# export AWS_SECRET_KEY="foo"
# export AWS_ACCESS_KEY="bar"
# export AWS_DEFAULT_REGION="us-east-1"

provider "aws" {}
