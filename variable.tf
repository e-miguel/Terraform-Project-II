# vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

# security group variables
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip address that can ssh into the ec2 instances"
  type          = string
}

# rds variables
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:us-east-1:614990794914:snapshot:fleetcart-final-snapshot"
  description   = "database snapshot arn"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t2.micro"
  description   = "the database instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "dev-rds-db"
  description   = "the database instance identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = false
  description   = "create a standby db instance"
  type          = bool
}

# application load balancer variables
variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:us-east-1:614990794914:certificate/4eb9f74c-be80-4c8f-9708-e0d5735da5d5"
  description   = "ssl certificate arn"
  type          = string
}

# sns topic variables
variable "operator_email" {
  default       = "e32cloud@gmail.com"
  description   = "a valid email address"
  type          = string
}

# auto scaling group variables
variable "launch_template_name" {
  default       = "dev-launch-template"
  description   = "name of the launch template"
  type          = string
}

variable "ec2_image_id" {
  default       = "ami-0fc5f2ed85e407150"
  description   = "id of the ami"
  type          = string
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "ec2 instance type"
  type          = string
}

variable "ec2_key_pair_name" {
  default       = "Pem-Halsey-Key"
  description   = "name of the ec2 key pair"
  type          = string
}

# route 53 variables
variable "domain_name" {
  default       = "pinkastra.co.uk"
  description   = "domain name"
  type          = string
}

variable "record_name" {
  default       = "www"
  description   = "sub domain name"
  type          = string
}