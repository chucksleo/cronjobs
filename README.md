# cronjob
This folder contains reusable Terraform module for a cronjob in Kubernetes

# Terraform Kubernetes CronJob Module

This Terraform module deploys a Kubernetes CronJob with customizable configurations.

## Usage

```hcl
module "cronjob" {
  source = "path-to-your-cronjob-module"  # Replace with the correct path or module source

  namespace             = "default"
  cronjob_name          = "my-cronjob"
  api_version           = "batch/v1beta1"
  kind                  = "CronJob"
  concurrency_policy    = "Allow"
  failed_jobs_history_limit = 5
  schedule              = "*/15 * * * *"
  timezone              = "UTC"
  starting_deadline_seconds = 30
  backoff_limit         = 2
  ttl_seconds_after_finished = 3600
  container_image       = "busybox"
  labels = {
    app     = "my-app"
    version = "1.0"
  }
}
```

 Name      | Version   |
|-----------|-----------|
| terraform | >= 0.15.5 |
| aws       | >= 3.62   |

## Resources

| Name                                                                                                                     | Type     |
|--------------------------------------------------------------------------------------------------------------------------|----------|
| [kubernetes_cronjob](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cron_jobt)       | resource |

## Inputs

| Name                       | Type       | Required| Description                                     | Default    |
|----------------------------|------------|---------|-------------------------------------------------|------------|
| namespace                  | string     |   No    | The namespace where the CronJob will be deployed|  "default" |
| cronjob_name               | string     |   Yes   | The name of the CronJob	                        |            |
| concurrency_policy         | string     |   No    | The concurrency policy for the CronJob	        |  "Allow"   |
| failed_jobs_history_limit	 | number     |   No    | The number of failed job history to retain	    |  10        |
| schedule                   | string     |   Yes   | The schedule for the CronJob	                  |            |
| starting_deadline_seconds  | number     |   No    | The deadline in seconds for starting the job	  |  30        |
| backoff_limit              | number     |   No    | The number of retries before giving up	        |  2         |
| ttl_seconds_after_finished | number     |   No    | Time to live in seconds after the job completes |  3000      |
| container_image            | string     |   Yes   | The name of the service                         |            |
| labels                     | map(string)|   No    | Standard metadata of the resource to be annoted |     {}     |

## Outputs

| Name           | Description                         |
|----------------|-------------------------------------|
| cronjob_name   | The name of the deployed CronJob    |


