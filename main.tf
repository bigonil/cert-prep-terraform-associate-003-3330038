resource "aws_instance" "lb-tf-import-test-631737274131" {
    #instance configuration
    ami="ami-0583d8c7a9c35822c"
    instance_type = "t2.micro"
    tags = {
        "Name" = "lb-tf-import-test-631737274131"
    }
}
