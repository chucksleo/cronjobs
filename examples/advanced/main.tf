# advanced example 

module "cronjob" {
  source = "../.."  # Replace with the correct path or module source

  namespace             = var.namespace
  cronjob_name          = var.cronjob_name
  api_version           = var.api_version
  kind                  = var.kind
  concurrency_policy    = var.concurrency_policy
  failed_jobs_history_limit = var.failed_jobs_history_limit
  schedule              = var.schedule
#   timezone              = var.timezone
  starting_deadline_seconds = var.starting_deadline_seconds
  backoff_limit         = var.backoff_limit
  ttl_seconds_after_finished = var.ttl_seconds_after_finished
  container_image       = var.container_image
  labels                = var.labels
}
