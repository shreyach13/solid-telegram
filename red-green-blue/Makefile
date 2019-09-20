#
#


TF_FILES := $(shell find . -name "*.tf")

terraform.tfstate: plan.out
	terraform apply plan.out

plan.out: $(TF_FILES) .terraform red.tfvars
	terraform plan -out plan.out

.terraform:
	terraform init

red.csv:
	aws s3 cp s3://mike-says-hello/ec2-data/red.csv ./

red.tfvars: red.csv
	create-tfvars.sh red.csv

all:
	@echo "Makefile needs your attention"

clean:
	terraform destroy -auto-approve
	rm -rf red*

# vim:ft=make
#
