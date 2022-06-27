# Terraform_Cloud
- 주소 : https://app.terraform.io/
- Terraform에서 기존 Enterprise 환경에서 제공하던 기능들을 일부 출시함
- 특히 tfstate를 원격으로 관리하는 기능을 제공

## 이력
  1. 테스트 시작
     □ 2022.06.14 - Terraform Cloud 가입
     □ Terraform_Cloud Repository 생성
  
## Variables
   1. Terraform Variables
      - `variables.tf`에 정의
      - ```
        variable "nhn_passwd" {
        type = string
        description = "NHN Authenticate Password"
        }
        ```
      - 이렇게 value 지정하지 않은 뒤, `Terraform Cloud` 콘솔에서 위의 변수 이름과 일치하게 변수 추가해주면 자동으로 값 대입
   2. Environment variable
      - 환경변수 입력
      - ex) AWS 같은 경우 Terraform으로 프로비저닝 할 때 키값들을 환경변수로 넣어줄 수 있다 

