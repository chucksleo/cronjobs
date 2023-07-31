# terraform.tfvars

# Set the values for the input variables of the cronjob-module
namespace             = "my-namespace"
cronjob_name          = "my-cronjob"
api_version           = "batch/v1beta1"
kind                  = "CronJob"
concurrency_policy    = "Allow"
failed_jobs_history_limit = 5
schedule              = "*/15 * * * *"
# timezone              = "UTC"
starting_deadline_seconds = 30
backoff_limit         = 2
ttl_seconds_after_finished = 3600
container_image       = "busybox"
labels = {
  app     = "my-app"
  version = "1.0"
}
