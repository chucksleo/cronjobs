# basic example 
module "my_cronjob" {
  source        = "./cronjob-module"
  namespace     = "default"
  cronjob_name  = "my-cronjob"
  schedule      = "*/15 * * * *"
  container_image = "busybox"
}