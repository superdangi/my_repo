terraform {
  backend "s3" {
    bucket = "terraform-backend-vivek"
    key    = "network/demo.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-backend-lock-file"
  }
}

resource "time_sleep" "time_sleep_for_3_minutes" {
  create_duration = "180s"

}