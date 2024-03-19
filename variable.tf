#Provider -  VMware vSphere Provider

variable "vsphere_user" {
  description = "vSphere username to use to connect to the environment"
}

variable "vsphere_password" {
  description = "vSphere password to use to connect to the environment"
}

variable "vsphere_server" {
  description = "vCenter server FQDN or IP"
}

# Infrastructure - vCenter / vSPhere environment

variable "vsphere_datacenter" {
  description = "vSphere datacenter in which the virtual machine will be deployed"
}

variable "vsphere_host" {
  description = "vSphere ESXi host FQDN or IP"
}

variable "vsphere_compute_cluster" {
  description = "vSPhere cluster in which the virtual machine will be deployed"
}

variable "vsphere_datastore" {
  description = "Datastore in which the virtual machine will be deployed"
}

variable "vsphere_network" {
  description = "Portgroup to which the virtual machine will be connected"
}

variable "vm_firmware" {
  description = "Firmware of virtual machine, if templates is different from default"
}

variable "vsphere-unverified-ssl" {
  type        = string
  description = "Is the VMware vCenter using a self signed certificate (true/false)"
}

#VM

variable "vm_template_name" {
  description = "VM template with vmware-tools and perl installed"
}

variable "vm_guest_id" {
  description = "VM guest ID"
}

variable "vm_vcpu" {
  description = "The number of virtual processors to assign to this virtual machine."
  default     = "1"
}

variable "vm_memory" {
  description = "The size of the virtual machine's memory in MB"
  default     = "1024"
}

variable "vm_ipv4_netmask" {
  description = "The IPv4 subnet mask"
}

variable "vm_ipv4_gateway" {
  description = "The IPv4 default gateway"
}

variable "vm_dns_servers" {
  description = "The list of DNS servers to configure on the virtual machine"
}

variable "vm_domain" {
  description = "Domain name of virtual machine"
}

variable "vms" {
  type        = map(any)
  description = "List of virtual machines to be deployed"
}

variable "vm_disk_label" {
  description = "Disk label of the created virtual machine"
}

variable "vm_disk_size" {
  description = "Disk size of the created virtual machine in GB"
}

variable "vm_disk_thin" {
  description = "Disk type of the created virtual machine , thin or thick"
}

variable "ssh_username" {
  type      = string
  sensitive = true
  default   = "jcometti"
}

variable "public_key" {
  type        = string
  description = "Public key to be used to ssh into a machine"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8/3+YtVxunoWwy1VAUKGYRIrB06OkqNnXPuYDfX1eM4Ltue004NMcqQO8SCKZcEtWVFDQwQ0e2gPKiLKDHvqApqIdL4wY+L0lx1ST8PFe7TUj9k6Z3pVRnI51WYRJr35GGH/7whMeS4UC8yy9tj0LL5u6NF5wdAid+dNiK60htEe46zs590p4lisErxFebkhM5hJ33hR57Roa4kNI1NqvzlnBeQv2akwqwAep4vg57vZpVGXqv9F7RyJp2Qi74bKRo8FqpNOvltfwrt5lyPOvd615vJpEG8CYk9cAErqNp0rKKCnKq0ELnXc5HPnygYBSGZdln254xmdgCmrltkLZp8R2l4zOEoY4i6I8D1ZqqIIobHgxPL0ZJxOc4saf/fK/EOLd0YnY87sepPhKBS05RBGoCPhtglvtL8Gc04/g5rf+5J82YXlqUVcwR8qOUyHj96toh646SUE6QLHyUW9ravGFhQoPs8e906JSu3mQVBbI7bq9VrIxz0M/T97LcP8= jcometti@Joaos-MacBook-Pro.local"
}
