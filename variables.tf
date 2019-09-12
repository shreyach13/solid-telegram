variable "keybase" {
  // Mikes keybase, will be used for username/password generation
  default = "setjump"
}
variable "people" {
  type = map
  // contains a list of peoples names to create aws accounts for
  default = {
    "shreyach13" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJyn9HGxpxmhj+rZPTlxqvWylZ1+eKJs4GBr9H+bMcY4Qlrj4HVxHLyrI1NJHwAkkRQzhWKTycVONNMdRtUjJNrLVWe+hIj/OQEjo1cq4BneUEsVpYrg51+yGH3jeMfAWJ58A9Z5tiA5dYUbbjtNIhFzRypISdHzmbGUBfdKE0sQezQg9CUmbMULMeUgchD0oCtmo6JdBIL5IKthUXy1O70ZftFZa9D52o6gKRXb/E631WACEE2WF4oT/7IoZelj50hRd52lPnl9s3Qv1lKpGZEi3DAdWn8hsiRGssUvTh+rPnH0+u1I6ZKovLaujlL5klSxkW/fyKrD8Q1OkB8Kqf shreya.chatterjee@ShreyaChatterjees-MacBook-Pro.local"
  }
}
