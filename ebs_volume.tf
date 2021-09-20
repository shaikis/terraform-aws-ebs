resource "aws_ebs_volume" "ebs_vol" {
  for_each = length(var.settings) > 0 ? var.settings {}
  availability_zone    = var.availability_zone
  multi_attach_enabled = var.multi_attach_bool
  kms_key_id           = data.kms_id.arn
  encrypted            = var.encryption_bool

dynamic "setting" {
    for_each = var.settings
    content {
      size = setting.value["size"]
      name = setting.value["name"]
      type = setting.value["type"]
    }
  }
}