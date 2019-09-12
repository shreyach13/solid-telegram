variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "ericechter" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCrXmHHrI+9PR4m7/8imIRrwQWF6md+1oaCRZM/r8jpfhLqqsN8pIUztl+Lu6PxGp9KdJFIlKxUhcMn1pINXYdETq6Tp0lIUjxXLrA9eUkdjt6TU7UG3vR1ibR4Nx2SGwULntsrUNDoYQX8l1AGgM4jLLQoba45xIFfVRlUkvcHaReifHsDQHnYsHBSZ0tg0GI9KUnPBgyoNa9/eBgPLH3NbQdg98lKdjqSdRNITT2qGe6GyS1On2OWJiOYqNwhQQY8zwAaPhDpcthKH+Vp7+sB3odL3CQzAhZnOie4+6xsV/uIPkljYrrJDGfqGonekUpuWR9lSjPTe9ZxY6N4bVz eric.echter@EricEchters-MacBook-Pro.local"
  }
}
