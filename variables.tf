variable "kms_key_id"{}
variable "multi_attach_bool" {}
variable "availability_zone" {}
variable "encryption_bool" {}
variable "settings" {
  type = list(map(string))
}