provider "aws" {
    region = "us-west-2"
}

resource "aws_iam_user" "myUser" {
    name = "RS"
}

resource "aws_iam_policy" "customPolicy" {
    name = "MyCustomPolicy"

    policy = <<EOF
{
    "Version": "2022-04-29",
    "Statement": [
        {
            "dsfsdf": "fsdfsdf",
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "policyBind" {
    name = "attachment"
    users = [aws_iam_user.myUser.name]
    policy_arn = aws_iam_policy.customPolicy.arn
  
}