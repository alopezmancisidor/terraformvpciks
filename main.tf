
variable "ssh_key" {}


resource "ibm_container_vpc_cluster" "cluster" {
  name              = "terraformvpcluster"
  vpc_id            = "43f0ec25-d6f2-4240-b44d-39bcc9c21a43"
  worker_count      = "1"
  flavor            = "c2.2x4"
  resource_group_id = "28f6a8857220498198236ee5af6bb31d"
  kube_version      = "1.16.5"
  disable_public_service_endpoint = "true"
  tags              = ["demo:terraformvpc"]
  zones {
    subnet_id = "df890db6-b538-49df-9650-2e0f0187aa06"
    name      = "eu-de-1"
  }
}

