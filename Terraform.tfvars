#Provider
vsphere_user     = "administrator@vsphere.local"
vsphere_password = "VMware123!"
vsphere_server   = "lab-vcs-l01.homelab.local"

#Infrastructure
vsphere_datacenter      = "Physical-Datacenter"
vsphere_host            = "192.168.1.51"
vsphere_compute_cluster = "physical-Cluster"
vsphere_datastore       = "NVMe"
vsphere_network         = "Home Network"

#VM
vm_template_name       = "Ubuntu-2204-Template-100GB-Thin"
vm_guest_id            = "ubuntu64Guest"
vsphere-unverified-ssl = "true"
vm_vcpu                = "2"
vm_memory              = "4096"
vm_ipv4_netmask        = "24"
# vm-network             = "Home Network"
vm_ipv4_gateway = "192.168.1.48"
vm_dns_servers  = ["192.168.1.49", "8.8.8.8"]
vm_disk_label   = "disk0"
vm_disk_size    = "100"
vm_disk_thin    = "true"
vm_domain       = "homelab.local"
vm_firmware     = "efi"

vms = {
  lab-k8s-test_01 = {
    name  = "lab-k8s-m01"
    vm_ip = "192.168.1.120"

  },
  lab-k8s-test_02 = {
    name  = "lab-k8s-w01"
    vm_ip = "192.168.1.121"
  },
  lab-k8s-test_03 = {
    name  = "lab-k8s-w02"
    vm_ip = "192.168.1.122"
  }
}
