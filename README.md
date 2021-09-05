# terraform-aws-ebs
creating EBS volumes


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