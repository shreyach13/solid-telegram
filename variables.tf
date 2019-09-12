variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "shreyach13" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJyn9HGxpxmhj+rZPTlxqvWylZ1+eKJs4GBr9H+bMcY4Qlrj4HVxHLyrI1NJHwAkkRQzhWKTycVONNMdRtUjJNrLVWe+hIj/OQEjo1cq4BneUEsVpYrg51+yGH3jeMfAWJ58A9Z5tiA5dYUbbjtNIhFzRypISdHzmbGUBfdKE0sQezQg9CUmbMULMeUgchD0oCtmo6JdBIL5IKthUXy1O70ZftFZa9D52o6gKRXb/E631WACEE2WF4oT/7IoZelj50hRd52lPnl9s3Qv1lKpGZEi3DAdWn8hsiRGssUvTh+rPnH0+u1I6ZKovLaujlL5klSxkW/fyKrD8Q1OkB8Kqf shreya.chatterjee@ShreyaChatterjees-MacBook-Pro.local"
    "dswilkinson73" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDW9/BFHYbRhk/Bub+QUWdRYhK9RQ14kDBqdMAgzWCYk/VcNiqfnKbpKa6AFOAEGHv9VDnb1cHyCZSexHE7YeVmvkxQVgVLvz9TP/9MFrapXrEHAOsKmMsZUDVAeaPAitiS+DY4ngPxJamoGWTohlaOcuqdePjJ7F1K7udy7y8BULABgBaaClBYgDi83z9ErPePnlYLq3ns7c/g180AhW9ereGFdAplZY9aAQtu1CeT2JLDJT8VHHYsnO4p2fcenM/VtfcDtddlmdPUYAJBEqz5XYysxExlDz3Kv3vOGCSvzByVF3jN5ux+19sT4h/udgvXO9Igp1FaRE1weV+uOdXv david.wilkinson@DavidWilkinsons-MacBook-Pro.local"
    "kseve1" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgztmL+nLR02f8mSeqvDV7Fr5YQvIRmNde+HmeNU7dgmbeNf3DspVeRdNTearqlbYUlWpiOoG36TPgsBJXvlLL51p82hSgalSmgJ+qhheXMzi7HBZH2ax9UQsvYcxYh5dMvR3g7gXHPYQTY0gFmXfeFTK5WaFH0kQ8gvglzM1ffThFJu2VRoMxWe/5Q8AfazI/HgyROvfpJlhIQrgvxnM+Kec8u5mp8tSGHK6PE1rmVCmOLvrTSxKFTgRPA/TU0c25bmAjeFwxbofpfbbjR1X3twjQdf2MjEbpD+Ziq8s4CV9IlhlAz+XucogHYO9UKAQTnhUVcr7IxpgTATqUKbHv erik.vermeer@Eriks-MacBook-Pro.local"
  }
}
