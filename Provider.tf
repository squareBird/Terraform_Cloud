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
  tenant_id   = "649bbc87313648de8d55b9ed50ca4b3e"
  auth_url    = "https://api-identity.infrastructure.cloud.toast.com/v2.0"
  region      = "KR1"
}

resource "openstack_blockstorage_volume_v2" "volume_3" {
  region      = "KR1"
  name        = "volume_3"
  description = "first test volume"
  size        = 20
}
