variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "PaulBroughton" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+fvYGeg5ZHmnDUWMM1jZ4DX23xrK7K/mxeh1O1aBYD/yFOJfBANGJ4itVb2jSCvChkUetLx9Uh/6VctebbWSNlMtZR/kqrXu+DfihK8YXrTAXaybK2IIH+zbLYsZFEuqJ3Im+U+diIU864YFxi04nkgKtQ1S8Cm4kWQXzAw94eyeDozkBX+Hj0s2Cl9iSB0SCRh5KZCMiCgaSf+kwEkwA2illqz273RD38BiKM1sMpcZGBIV9sbPwCoYHcrN/47N0fsGR7cH64U9rh0vuMXL+4tSNGfxGVLAe8qqKujiwMQ3nSD2SHIoryK2vdrxlTcNXxEJiVJzKGhjWPhApc5zx paul.broughton@PaulBroughtons-MacBook-Pro.local"
    "shreyach13" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJyn9HGxpxmhj+rZPTlxqvWylZ1+eKJs4GBr9H+bMcY4Qlrj4HVxHLyrI1NJHwAkkRQzhWKTycVONNMdRtUjJNrLVWe+hIj/OQEjo1cq4BneUEsVpYrg51+yGH3jeMfAWJ58A9Z5tiA5dYUbbjtNIhFzRypISdHzmbGUBfdKE0sQezQg9CUmbMULMeUgchD0oCtmo6JdBIL5IKthUXy1O70ZftFZa9D52o6gKRXb/E631WACEE2WF4oT/7IoZelj50hRd52lPnl9s3Qv1lKpGZEi3DAdWn8hsiRGssUvTh+rPnH0+u1I6ZKovLaujlL5klSxkW/fyKrD8Q1OkB8Kqf shreya.chatterjee@ShreyaChatterjees-MacBook-Pro.local"
    "dswilkinson73" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDW9/BFHYbRhk/Bub+QUWdRYhK9RQ14kDBqdMAgzWCYk/VcNiqfnKbpKa6AFOAEGHv9VDnb1cHyCZSexHE7YeVmvkxQVgVLvz9TP/9MFrapXrEHAOsKmMsZUDVAeaPAitiS+DY4ngPxJamoGWTohlaOcuqdePjJ7F1K7udy7y8BULABgBaaClBYgDi83z9ErPePnlYLq3ns7c/g180AhW9ereGFdAplZY9aAQtu1CeT2JLDJT8VHHYsnO4p2fcenM/VtfcDtddlmdPUYAJBEqz5XYysxExlDz3Kv3vOGCSvzByVF3jN5ux+19sT4h/udgvXO9Igp1FaRE1weV+uOdXv david.wilkinson@DavidWilkinsons-MacBook-Pro.local"
    "erik.vermeer" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgztmL+nLR02f8mSeqvDV7Fr5YQvIRmNde+HmeNU7dgmbeNf3DspVeRdNTearqlbYUlWpiOoG36TPgsBJXvlLL51p82hSgalSmgJ+qhheXMzi7HBZH2ax9UQsvYcxYh5dMvR3g7gXHPYQTY0gFmXfeFTK5WaFH0kQ8gvglzM1ffThFJu2VRoMxWe/5Q8AfazI/HgyROvfpJlhIQrgvxnM+Kec8u5mp8tSGHK6PE1rmVCmOLvrTSxKFTgRPA/TU0c25bmAjeFwxbofpfbbjR1X3twjQdf2MjEbpD+Ziq8s4CV9IlhlAz+XucogHYO9UKAQTnhUVcr7IxpgTATqUKbHv erik.vermeer@Eriks-MacBook-Pro.local"
    "nishantnikhil-github" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoPgYMb9kfw+g4sNV1dFCkLItig7UvrMO0NO0Rhicgf6y582bCOGqyfHUvPI0Q8DGRjsSQiMsOR7vPYQRsuCX4K4m32SgaEf8//8hEVI2AR14rgLXHa8XvnyrXxj16RB1Fng0aiZ5rOq2nuvogL++AETZlUquI1XphAtAvoszqSapi4ltAGoA1/76vm77izFeZ6NGeildMTrUpOximpOleqRrdFGr77xA3WYtBPE9tO8Edgo6nMlBGHUF7jP7quy4Dn9nPqvTqG4KxCV/xYEalhhk6r4GagJMHHOWZtthaVtIKbG81dJB45qLHja3oBKCKCzscvGGnuBqxENC2nE11 nishant.nikhil@NishantNikhils-MacBook-Pro.local"
    "ericechter" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCrXmHHrI+9PR4m7/8imIRrwQWF6md+1oaCRZM/r8jpfhLqqsN8pIUztl+Lu6PxGp9KdJFIlKxUhcMn1pINXYdETq6Tp0lIUjxXLrA9eUkdjt6TU7UG3vR1ibR4Nx2SGwULntsrUNDoYQX8l1AGgM4jLLQoba45xIFfVRlUkvcHaReifHsDQHnYsHBSZ0tg0GI9KUnPBgyoNa9/eBgPLH3NbQdg98lKdjqSdRNITT2qGe6GyS1On2OWJiOYqNwhQQY8zwAaPhDpcthKH+Vp7+sB3odL3CQzAhZnOie4+6xsV/uIPkljYrrJDGfqGonekUpuWR9lSjPTe9ZxY6N4bVz eric.echter@EricEchters-MacBook-Pro.local"
    "eddyniemeijer" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0R0b5LVl9FY6lJNroxzIOjDcXF3VyLy7VYQ+EqcIiaK6vuacEGkFXO0093xfXO7ePOMBRBC25duKuNHfYw/DuroQq7X163L+vMpfrcziN7c2/k1x8LXftT3G4oQIamP1rzBGfdh/t8ZQqQfza2kzKIjiHel6EtXbTyzzb2Y6CrSibXPhdpRDLP1c5I/1jyYNZHExBpQcdESM/ry/3YObkoqL6IdKNlCYp4nbx5lYu7PdogJBn6stYSYs1ei8EMuuwyCLAa+Ss2oq1QtFCrEzNtI9e4zftT+7Xo/8PyY4SqwMUYuKzuxZuy6kVNpfQ1+rYY4ZsEF7M7pWowat94BklmxmyPDhDOAoG1GUSZkBU3OSAr8p0CRpjAJ9JZ9H4EKVy73+u3CLu7MY5WombBJSdyvziDTpYGLGKEG7bsmYuiiyoxK5N1scouxhaQFSaV/kUJcgL9gMHporysNDiuxPsoDtYMSK1wfjZoBVLvbfvUUdo2FIGaoXXiiCnBy3G0uY0zbfkxeIdWiVMu+g+mXvBYGT26JtPfqd+Ib+gsky5zpVuxVzKexHSs35XLRYZqFNXFDkA3QLQouo8PIVCM1rN22eOznUTCQeRxLS8YEa0NeXycIwv2oYxdqFG+rU0Z7WyNnpvPoBBh91u9jzoq4fxg5o7+A9hOVH6mqqjpZOBVw== mhristof@chessell.local"
    "Olivia" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0R0b5LVl9FY6lJNroxzIOjDcXF3VyLy7VYQ+EqcIiaK6vuacEGkFXO0093xfXO7ePOMBRBC25duKuNHfYw/DuroQq7X163L+vMpfrcziN7c2/k1x8LXftT3G4oQIamP1rzBGfdh/t8ZQqQfza2kzKIjiHel6EtXbTyzzb2Y6CrSibXPhdpRDLP1c5I/1jyYNZHExBpQcdESM/ry/3YObkoqL6IdKNlCYp4nbx5lYu7PdogJBn6stYSYs1ei8EMuuwyCLAa+Ss2oq1QtFCrEzNtI9e4zftT+7Xo/8PyY4SqwMUYuKzuxZuy6kVNpfQ1+rYY4ZsEF7M7pWowat94BklmxmyPDhDOAoG1GUSZkBU3OSAr8p0CRpjAJ9JZ9H4EKVy73+u3CLu7MY5WombBJSdyvziDTpYGLGKEG7bsmYuiiyoxK5N1scouxhaQFSaV/kUJcgL9gMHporysNDiuxPsoDtYMSK1wfjZoBVLvbfvUUdo2FIGaoXXiiCnBy3G0uY0zbfkxeIdWiVMu+g+mXvBYGT26JtPfqd+Ib+gsky5zpVuxVzKexHSs35XLRYZqFNXFDkA3QLQouo8PIVCM1rN22eOznUTCQeRxLS8YEa0NeXycIwv2oYxdqFG+rU0Z7WyNnpvPoBBh91u9jzoq4fxg5o7+A9hOVH6mqqjpZOBVw== mhristof@chssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVNvIJtNjLUuzbs6qVAceFMnqwNaRnq36wamUTspSJV7uG0+k2HKcul7x0p7Ejuj0Gvx+zgRytJV8HID/d0iWyKQkvMZjHn5ZY3ckFTCMa2mkx4OBQJl6nimxGmTv9uXgctviMbYlFwJtWz/XJY9IyXwDKII77RfIKKcUbKz2NDcjY81PHSFm7gcACmQ8jZjnizCI9Ha9t5x48lS7GQl1+1Mmb2gxHFzEh0R7W+ux/oGJ+C/D/5XltbLl/0Y2F6TMP72yKwz2dwQxcNpqYMyLV9IRfpNzUS9bl8bMyixZJUzkpaGrYeZU6fBlqWvwQ7TMXdzGcOON8ht+vPTxnNkE3 olivia.blaine@OliviaBlaines-MacBook-Pro.local"
    "PaulBroughton" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+fvYGeg5ZHmnDUWMM1jZ4DX23xrK7K/mxeh1O1aBYD/yFOJfBANGJ4itVb2jSCvChkUetLx9Uh/6VctebbWSNlMtZR/kqrXu+DfihK8YXrTAXaybK2IIH+zbLYsZFEuqJ3Im+U+diIU864YFxi04nkgKtQ1S8Cm4kWQXzAw94eyeDozkBX+Hj0s2Cl9iSB0SCRh5KZCMiCgaSf+kwEkwA2illqz273RD38BiKM1sMpcZGBIV9sbPwCoYHcrN/47N0fsGR7cH64U9rh0vuMXL+4tSNGfxGVLAe8qqKujiwMQ3nSD2SHIoryK2vdrxlTcNXxEJiVJzKGhjWPhApc5zx paul.broughton@PaulBroughtons-MacBook-Pro.local"
    "shreyach13" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJyn9HGxpxmhj+rZPTlxqvWylZ1+eKJs4GBr9H+bMcY4Qlrj4HVxHLyrI1NJHwAkkRQzhWKTycVONNMdRtUjJNrLVWe+hIj/OQEjo1cq4BneUEsVpYrg51+yGH3jeMfAWJ58A9Z5tiA5dYUbbjtNIhFzRypISdHzmbGUBfdKE0sQezQg9CUmbMULMeUgchD0oCtmo6JdBIL5IKthUXy1O70ZftFZa9D52o6gKRXb/E631WACEE2WF4oT/7IoZelj50hRd52lPnl9s3Qv1lKpGZEi3DAdWn8hsiRGssUvTh+rPnH0+u1I6ZKovLaujlL5klSxkW/fyKrD8Q1OkB8Kqf shreya.chatterjee@ShreyaChatterjees-MacBook-Pro.local"
    "dswilkinson73" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDW9/BFHYbRhk/Bub+QUWdRYhK9RQ14kDBqdMAgzWCYk/VcNiqfnKbpKa6AFOAEGHv9VDnb1cHyCZSexHE7YeVmvkxQVgVLvz9TP/9MFrapXrEHAOsKmMsZUDVAeaPAitiS+DY4ngPxJamoGWTohlaOcuqdePjJ7F1K7udy7y8BULABgBaaClBYgDi83z9ErPePnlYLq3ns7c/g180AhW9ereGFdAplZY9aAQtu1CeT2JLDJT8VHHYsnO4p2fcenM/VtfcDtddlmdPUYAJBEqz5XYysxExlDz3Kv3vOGCSvzByVF3jN5ux+19sT4h/udgvXO9Igp1FaRE1weV+uOdXv david.wilkinson@DavidWilkinsons-MacBook-Pro.local"
    "kseve1" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgztmL+nLR02f8mSeqvDV7Fr5YQvIRmNde+HmeNU7dgmbeNf3DspVeRdNTearqlbYUlWpiOoG36TPgsBJXvlLL51p82hSgalSmgJ+qhheXMzi7HBZH2ax9UQsvYcxYh5dMvR3g7gXHPYQTY0gFmXfeFTK5WaFH0kQ8gvglzM1ffThFJu2VRoMxWe/5Q8AfazI/HgyROvfpJlhIQrgvxnM+Kec8u5mp8tSGHK6PE1rmVCmOLvrTSxKFTgRPA/TU0c25bmAjeFwxbofpfbbjR1X3twjQdf2MjEbpD+Ziq8s4CV9IlhlAz+XucogHYO9UKAQTnhUVcr7IxpgTATqUKbHv erik.vermeer@Eriks-MacBook-Pro.local"
    }
}
