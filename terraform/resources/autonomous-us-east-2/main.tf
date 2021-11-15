provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Team        = var.team
      Maintainer  = var.maintainer
    }
  }

}

provider "archive" {}