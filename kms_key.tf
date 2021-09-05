data "aws_kms_key" "kms_id" {
  key_id = var.kms_key_id
}