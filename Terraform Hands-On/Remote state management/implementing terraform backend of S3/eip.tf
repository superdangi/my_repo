resource "aws_eip" "my_eip" {
    tags =  {
        name = "my_eip"
    }
}