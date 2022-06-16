terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

provider "openstack" {
  user_name   = "cloudmsp@wins21.co.kr"
  password = var.nhn_passwd
  tenant_id = var.tanent_id
  auth_url    = var.auth_url
  region      = "KR1"
}

resource "openstack_compute_instance_v2" "instance" {
  name = "test"
}

resource "openstack_blockstorage_volume_attach_v2" "attach_instance_volume" {
  instance_id = "087e8cdb-f998-4709-8610-b28cd3c3b07a"
  volume_id = openstack_blockstorage_volume_v2.volume_3.id
}

resource "openstack_blockstorage_volume_v2" "volume_3" {
  region      = "KR1"
  name        = "volume_3"
  description = "first test volume"
  size        = 50
}

resource "openstack_blockstorage_volume_v2" "volume_4" {
  region      = "KR1"
  name        = "volume_3"
  description = "first test volume"
  size        = 50
}
