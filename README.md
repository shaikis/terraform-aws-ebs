# terraform-aws-ebs
creating EBS volumes

```
module "create_ebs_vol" {
  source = "git@github.com:shaikis/terraform-aws-ebs.git"
  availability_zone = "eu-west-1a"
  multi_attach_bool = "true|false"
  encryption_bool   = "true|false"
  kms_key_id        = "KMS KEY ARN"
  settings = [
 {
   size = "100"
   name = "vol-1"
   type = "gp3|io1!io2"
 },
 {
   size = "50"
   name = "vol-2"
   type = "gp3|io1!io2"
 },
]

}
```

```
add this variable values in outside the module( calling module variable/tfvars)
settings = [
 {
   size = "100"
   name = "vol-1"
   type = "gp3|io1!io2"
 },
 {
   size = "50"
   name = "vol-2"
   type = "gp3|io1!io2"
 },
]
```