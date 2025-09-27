variable "prefix" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "sa_name" {
  type = string
  # unikalne globalnie, małe litery/cyfry
}