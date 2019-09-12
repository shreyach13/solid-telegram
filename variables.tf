variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "PaulBroughton" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+fvYGeg5ZHmnDUWMM1jZ4DX23xrK7K/mxeh1O1aBYD/yFOJfBANGJ4itVb2jSCvChkUetLx9Uh/6VctebbWSNlMtZR/kqrXu+DfihK8YXrTAXaybK2IIH+zbLYsZFEuqJ3Im+U+diIU864YFxi04nkgKtQ1S8Cm4kWQXzAw94eyeDozkBX+Hj0s2Cl9iSB0SCRh5KZCMiCgaSf+kwEkwA2illqz273RD38BiKM1sMpcZGBIV9sbPwCoYHcrN/47N0fsGR7cH64U9rh0vuMXL+4tSNGfxGVLAe8qqKujiwMQ3nSD2SHIoryK2vdrxlTcNXxEJiVJzKGhjWPhApc5zx paul.broughton@PaulBroughtons-MacBook-Pro.local"
    "dswilkinson73" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDW9/BFHYbRhk/Bub+QUWdRYhK9RQ14kDBqdMAgzWCYk/VcNiqfnKbpKa6AFOAEGHv9VDnb1cHyCZSexHE7YeVmvkxQVgVLvz9TP/9MFrapXrEHAOsKmMsZUDVAeaPAitiS+DY4ngPxJamoGWTohlaOcuqdePjJ7F1K7udy7y8BULABgBaaClBYgDi83z9ErPePnlYLq3ns7c/g180AhW9ereGFdAplZY9aAQtu1CeT2JLDJT8VHHYsnO4p2fcenM/VtfcDtddlmdPUYAJBEqz5XYysxExlDz3Kv3vOGCSvzByVF3jN5ux+19sT4h/udgvXO9Igp1FaRE1weV+uOdXv david.wilkinson@DavidWilkinsons-MacBook-Pro.local"
    "erik.vermeer" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgztmL+nLR02f8mSeqvDV7Fr5YQvIRmNde+HmeNU7dgmbeNf3DspVeRdNTearqlbYUlWpiOoG36TPgsBJXvlLL51p82hSgalSmgJ+qhheXMzi7HBZH2ax9UQsvYcxYh5dMvR3g7gXHPYQTY0gFmXfeFTK5WaFH0kQ8gvglzM1ffThFJu2VRoMxWe/5Q8AfazI/HgyROvfpJlhIQrgvxnM+Kec8u5mp8tSGHK6PE1rmVCmOLvrTSxKFTgRPA/TU0c25bmAjeFwxbofpfbbjR1X3twjQdf2MjEbpD+Ziq8s4CV9IlhlAz+XucogHYO9UKAQTnhUVcr7IxpgTATqUKbHv erik.vermeer@Eriks-MacBook-Pro.local"
  }
}
