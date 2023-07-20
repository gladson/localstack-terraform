CURRENT_DIR=$(shell pwd)/infra
COMMAND_TERRAFORM=cd $(CURRENT_DIR) && terraform
COMMAND_AWS=cd $(CURRENT_DIR) && aws

current_infra:
	cd $(CURRENT_DIR)

tf_init:
	$(COMMAND_TERRAFORM) init

tf_destroy:
	$(COMMAND_TERRAFORM) destroy

tf_fmt:
	$(COMMAND_TERRAFORM) fmt

tf_validate:
	$(COMMAND_TERRAFORM) validate

tf_apply:
	$(COMMAND_TERRAFORM) apply

aws_list_buckets:
	${COMMAND_AWS} s3api list-buckets --query "Buckets[].Name" --endpoint-url=http://localhost:4566