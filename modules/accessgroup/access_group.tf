terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.14.0"
    }
  }
}

provider "ibm" {
  region           = var.region
  ibmcloud_api_key = var.ibmcloud_api_key
}
resource "ibm_iam_access_group" "accgrp" {
  name        = "sumanthtestag1"
  description = "Test access group created using Terraform"
}