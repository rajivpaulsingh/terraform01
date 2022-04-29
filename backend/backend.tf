terraform {
    backend "s3" {
        key = "terraform/tfstate.tfstate"
        bucket = "random-bucket"
        region = "us-west-2"
        access_key = "enter-here"
        secret_key = "enter-here"
    }
}