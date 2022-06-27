# Provider에 정의한 인증 정보를 변수 형태로 받음

variable "nhn_passwd" {
  type = string
  description = "NHN Authenticate_Password"
}

variable "tenant_id" {
  type = string
  description = "NHN tenant_id"
}

variable "auth_url" {
  type = string
  description = "NHN auth_url"
}