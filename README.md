# Description

Avoid cleaning up your environment when coding with Docker containers.

# How to use

To configure your project as this tutorial presents you need to have both Docker and Terraform installed.

```shell
terraform plan 
terraform apply --auto-approve
```
That way, all images created by Terraform and containers running them will be cleaned up as you run:

```shell
terraform destroy --auto-approve
```

# How to test

After successfully run `terraform apply --auto-approve`, open [localhost:80](http://localhost:80) on your browser to see [Hello world](content/index.html).
