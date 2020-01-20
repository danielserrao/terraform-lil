# Terraform will request this value when using "apply"
variable new_value {
    
}

variable aws_ip_cidr_range {
    default = "10.0.1.0/24"
    type = "string"
    description = "IP CIDR Range for AWS VPC."
}

variable subnet_names {
    type = "map"

    default = {
        subnet1 = "subnetone"
        subnet2 = "subnettwo"
        subnet3 = "subnetthree"
    }
}

# These outputs will appear on the console at the end of the "apply"
output "first_output" {
    value = "this is the value through execution."
}

output "aws_cidr_subnet1" {
    value = "${aws_subnet.subnet1.cidr_block}"
}

# variable "newvariable" {
#     type = "string"
#     default = "thisisvalue"
# }

# variable "maptype" {
#     type = "map"
#     default = {
#         subnet1 = "subnet1"
#         subnet2 = "subnet2"
#         subnet3 = "bettersubnetname3"
#     }
# }

# variable "listtype" {
#     type = "list"
#     default = ["item1", "item2"]
# }