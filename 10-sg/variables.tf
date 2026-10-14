variable "project" {
    type = string
    default = "Roboshop"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "sg_names" {
    type = list
    default = [
                #databse
                "mongodb", "redis", "mysql", "rabbitmq",
                #backend
                "catalogue", "user", "cart", "shipping",
                #backednalb
                "backendalb",
                #frontend
                "frontend",
                #frontendalb
                "frontendlb",
                #bastion
                "bastion"
    ] 

    
}