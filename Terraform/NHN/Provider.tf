# 해당 파일을 통해 배포할 Terraform 버전 정의
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# 리소스를 프로비저닝할 CSP 정의
provider "openstack" {
  user_name   = "cloudmsp@wins21.co.kr"
  password = var.nhn_passwd
  tenant_id = var.tenant_id
  auth_url    = var.auth_url
  region      = "KR1"
}