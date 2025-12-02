// Variables to use accross the project
// which can be accessed by var.project_id
variable "project_id" {
  description = "The project ID to host the cluster in"
  default     = "binance-test-479915"
}

variable "zone" {
  description = "Zone for instance"
  default     = "asia-southeast1-a"
}

variable "region" {
  description = "The region the cluster in"
  default     = "asia-southeast1"
}

variable "default_disk_size" {
  description = "default_disk_size_gb"
  default     = "50"
}

variable "node_count" {
  description = "node_count"
  default     = "2"
}

variable "initial_node_count" {
  description = "initial_node_count"
  default     = "2"
}

variable "machine_type" {
  description = "Machine type for instance"
  default     = "e2-standard-2"
}

variable "bucket" {
  description = "GCS bucket for MLE course"
  default     = "theanh-test-bucket-hihiaa"
}

variable "instance_name" {
  description = "Name of the instance"
  default     = "jenkins-node"
}

variable "boot_disk_image" {
  description = "Boot disk image for instance"
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "boot_disk_size" {
  description = "Boot disk size for instance"
  default     = 50
}


variable "firewall_jenkins_port_name" {
  description = "The name for the Jenkins firewall rule."
  type        = string
  default     = "jenkins-allow-ports" 
}

variable "firewall_jenkins_port_ranges" {
  description = "List of TCP ports to allow for Jenkins."
  type        = list(string)
  default     = ["8081", "50000"] # Giá trị mặc định
}

variable "firewall_jenkins_source_ranges" {
  description = "List of source IP ranges for the Jenkins firewall rule."
  type        = list(string)
  default     = ["0.0.0.0/0"] # Giá trị mặc định
}


variable "ssh_keys" {
  description = "Value of the public ssh key"
  default     = "testcoze:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQClvS99pi4MnrntIGMKxqQF7gk4bz8knUvGI22keNlPUZfT+BFcOtfsTCRAEflJMs9UDZNhCoyffBr83VKSSwkjeOXl0DZJfoTEgUBIaIy4fZHt2WfAf9OZrUMvbxQmUS1+4TQQZ5zPmSw3DxPGtBW3uhXySLCWfMsWisPRFEYmSX/+uiov0/tRS+alDt8eB5ghwUEzwpee6/RLdkxxyj64Js0pFvoABn18ZfaP1GzqxKabWnph6zry8+azlxjWMexxE4AxuQKtgTKtGPuPSuX5a9RfZtX4jTDEKZ9vM5cjS+TPZFqFzn86iSc6oohm4M0ncbJIW1J3S+zguuBROIWxAF7A9CbUKuuBcAUSmZZGI6lHE+3q74lrTnwIjM8VPONbr9P0mUCL0dpXMfM4lz3J5clZ19bussTm42EU0eH9RWiWXRAKOIzseZyWiKZgnu4ukRQ1dGyxxbhI+NE4947GDpwAwSJsQxWrSXOJc9gCefAN94x5wPN2Alr3d09c2D0= theanh"
}
// run command "ssh-keygen" to generate ssh keys
// run command "cat ~/.ssh/id_rsa.pub" to show public ssh key

