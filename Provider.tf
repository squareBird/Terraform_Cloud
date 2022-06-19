terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# 변수는 Terrform-Cloud 에서 별도로 관리
provider "openstack" {
  user_name   = "cloudmsp@wins21.co.kr"
  password = var.nhn_passwd
  tenant_id = var.tanent_id
  auth_url    = var.auth_url
  region      = "KR1"
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
