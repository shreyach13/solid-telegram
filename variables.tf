variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "todo-replace-me" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0R0b5LVl9FY6lJNroxzIOjDcXF3VyLy7VYQ+EqcIiaK6vuacEGkFXO0093xfXO7ePOMBRBC25duKuNHfYw/DuroQq7X163L+vMpfrcziN7c2/k1x8LXftT3G4oQIamP1rzBGfdh/t8ZQqQfza2kzKIjiHel6EtXbTyzzb2Y6CrSibXPhdpRDLP1c5I/1jyYNZHExBpQcdESM/ry/3YObkoqL6IdKNlCYp4nbx5lYu7PdogJBn6stYSYs1ei8EMuuwyCLAa+Ss2oq1QtFCrEzNtI9e4zftT+7Xo/8PyY4SqwMUYuKzuxZuy6kVNpfQ1+rYY4ZsEF7M7pWowat94BklmxmyPDhDOAoG1GUSZkBU3OSAr8p0CRpjAJ9JZ9H4EKVy73+u3CLu7MY5WombBJSdyvziDTpYGLGKEG7bsmYuiiyoxK5N1scouxhaQFSaV/kUJcgL9gMHporysNDiuxPsoDtYMSK1wfjZoBVLvbfvUUdo2FIGaoXXiiCnBy3G0uY0zbfkxeIdWiVMu+g+mXvBYGT26JtPfqd+Ib+gsky5zpVuxVzKexHSs35XLRYZqFNXFDkA3QLQouo8PIVCM1rN22eOznUTCQeRxLS8YEa0NeXycIwv2oYxdqFG+rU0Z7WyNnpvPoBBh91u9jzoq4fxg5o7+A9hOVH6mqqjpZOBVw== mhristof@chessell.local"
   "Prasanth-Sasidharan" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2r2gHUm8e5iVA9aa2/P2cvyyZttCFZT8i6nrm06thE/TVaMqCzLP/x/6gHlFQ4qVXd/UX1v+/Jb43ZPYTL4PepDVVKbDQjfgaPTdvJPijEtvnm1HYHk1JiWdoKuLkQY1V82PbSG4G/FjIIpMVzT/VO+Tputi8VosxPTfAyoF2Z8dU7hRQiWVzC7Gz7hNMgs30U7J6Rr0l6IKugiITRetzGSXz9Eq826X5BE7aFE3ItZlzHT16xg4DIg1aFnP21Aseyogx2pGS397DKyHb+dEFfcVF8lsG0rgheHyWMSUk/aNTIbBwr/anPH/N9A/8AgoezhN0dqrfmGItOfqQ8kMF prasanth.sasidharan@Prasanths-MacBook-Pro.local"
  }
}
