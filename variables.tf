variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "nishant-nikhil-github" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoPgYMb9kfw+g4sNV1dFCkLItig7UvrMO0NO0Rhicgf6y582bCOGqyfHUvPI0Q8DGRjsSQiMsOR7vPYQRsuCX4K4m32SgaEf8//8hEVI2AR14rgLXHa8XvnyrXxj16RB1Fng0aiZ5rOq2nuvogL++AETZlUquI1XphAtAvoszqSapi4ltAGoA1/76vm77izFeZ6NGeildMTrUpOximpOleqRrdFGr77xA3WYtBPE9tO8Edgo6nMlBGHUF7jP7quy4Dn9nPqvTqG4KxCV/xYEalhhk6r4GagJMHHOWZtthaVtIKbG81dJB45qLHja3oBKCKCzscvGGnuBqxENC2nE11 nishant.nikhil@NishantNikhils-MacBook-Pro.local"
  }
}
