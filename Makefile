path_infra:
	cd infra

tf_init: path_infra
	terraform init

tf_destroy: path_infra
	terraform destroy

tf_fmt: path_infra
	terraform fmt

tf_validate: tf_fmt
	terraform validate

tf_apply: tf_validate path_infra
	terraform apply

aws_list_buckets: path_infra
	aws s3api list-buckets --query "Buckets[].Name" --endpoint-url=http://localhost:4566