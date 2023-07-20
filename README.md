# [Localstack + Terraform](https://docs.localstack.cloud/user-guide/integrations/terraform/)

## Localstack

Cloud service emulator that runs in a single container on your laptop or in your CI environment.

## Terraform

Infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

## RUN PROJECT

![image](https://github.com/gladson/localstack-terraform/assets/1013698/2f24b20f-5cfb-4d1c-93d7-3c1b1e347be2)

### TF_INIT

```bash
root ➜ /home/localstack/app/infra (main) $ make tf_init
```

### TF_APPLY

```bash
root ➜ /home/localstack/app/infra (main) $ make tf_apply
aws_s3_bucket.bucket: Refreshing state... [id=terraform-name-bucket]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket will be created
  + resource "aws_s3_bucket" "bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = "public-read"
      + arn                         = (known after apply)
      + bucket                      = "terraform-name-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.bucket: Creating...
aws_s3_bucket.bucket: Creation complete after 1s [id=terraform-name-bucket]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
