###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}


variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_family" {
  type        = string
  description = "vm os family"
  default     = "ubuntu-2004-lts"
}

variable "vm_web" {
  type        = object({ name = string, count = number, resources = map(number), preemptible = bool, nat = bool })
  description = "vm_web_description"
  default = {
    name  = "web"
    count = 2
    resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    preemptible = true
    nat         = true
  }
}

variable "each_vm" {
  type        = list(object({ vm_name = string, cpu = number, ram = number, disk_volume = number, core_fraction = number, preemptible = bool, nat = bool }))
  description = "vm_db_description"
  default = [
    {
      vm_name       = "main"
      cpu           = 2
      ram           = 1
      disk_volume   = 5
      core_fraction = 5
      preemptible   = true
      nat           = false
    },
    {
      vm_name       = "replica"
      cpu           = 4
      ram           = 2
      disk_volume   = 10
      core_fraction = 5
      preemptible   = true
      nat           = false
  }]
}

variable "disks" {
  type        = object({ name = string, count = number, type = string, size = number })
  description = "disks_parameters"
  default = {
    name  = "disk"
    count = 3
    type  = "network-hdd"
    size  = 1
  }
}

variable "vm_storage" {
  type        = object({ name = string, resources = map(number), preemptible = bool, nat = bool })
  description = "vm_storage_description"
  default = {
    name = "storage"
    resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    preemptible = true
    nat         = false
  }
}



