provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_iam_user" "existing_user" {
  # 실제로 계정에 이미 존재하는 IAM 사용자 이름으로 아래를 변경해야 하며
  # terraform import 명령어로 기존 리소스를 테라폼에 추가할 수 있다.
  name = "yevgeniy.brikman"
}
