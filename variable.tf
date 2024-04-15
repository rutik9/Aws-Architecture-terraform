##1 vpc  1 pub subnet 1 priv subnet 1 igw 1 nat 1 route table 

variable "vpc" {
    type = list(string)
    default = [ "10.0.0.0/16" ]
}
variable "public-subnet" {
    type = list(string)
    default = [ "10.0.1.0/24" ]
}
variable "private-subnet" {
    type = list(string)
    default = [ "10.0.2.0/24" ]
}
variable "public-instance" {
    type = number
    default = 1
   
  
}

variable "private-instance" {
    type=number
    default =1
  
}
