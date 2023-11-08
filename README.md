# definitive-terraform

These Terraform's configuration files will provide a complete AWS VM (with VPC, Subnet, NSG, Key-Pair)

- It uses a data block to fetch the AMI needed for the VM.
- Using local exec provisioner, the key-pair is created in the same path as the configuration files.
- With a data_user parameter in the VM resource block, it will install Nginx. Then it will write a basic HTML file to replace the Nginx default one.
- It has two outputs blocks. One is a DNS for the VM to ingress through http and display a basic welcome page. The other one, outputs a command to be entered directly into a terminal and access the VM through SSH.
