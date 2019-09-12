variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "PaulBroughton" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+fvYGeg5ZHmnDUWMM1jZ4DX23xrK7K/mxeh1O1aBYD/yFOJfBANGJ4itVb2jSCvChkUetLx9Uh/6VctebbWSNlMtZR/kqrXu+DfihK8YXrTAXaybK2IIH+zbLYsZFEuqJ3Im+U+diIU864YFxi04nkgKtQ1S8Cm4kWQXzAw94eyeDozkBX+Hj0s2Cl9iSB0SCRh5KZCMiCgaSf+kwEkwA2illqz273RD38BiKM1sMpcZGBIV9sbPwCoYHcrN/47N0fsGR7cH64U9rh0vuMXL+4tSNGfxGVLAe8qqKujiwMQ3nSD2SHIoryK2vdrxlTcNXxEJiVJzKGhjWPhApc5zx paul.broughton@PaulBroughtons-MacBook-Pro.local"
  }
}
