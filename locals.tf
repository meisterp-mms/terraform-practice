locals {
  project_services = [
    "bigquery-json.googleapis.com",        // Required for cloudapis.googleapis.com, container.googleapis.com, resourceviews.googleapis.com, ...
    "bigquerystorage.googleapis.com",
    "bigquerydatatransfer.googleapis.com",
    "cloudapis.googleapis.com",
    "cloudbuild.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudfunctions.googleapis.com",
    "cloudkms.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudtrace.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "containerregistry.googleapis.com",
    "datastore.googleapis.com",
    "deploymentmanager.googleapis.com",    // Required for replicapool.googleapis.com, replicapoolupdater.googleapis.com
    "dns.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "oslogin.googleapis.com",              // Required for compute.googleapis.com
    "pubsub.googleapis.com",
    "replicapool.googleapis.com",
    "replicapoolupdater.googleapis.com",
    "resourceviews.googleapis.com",
    "runtimeconfig.googleapis.com",
    "servicecontrol.googleapis.com",
    "servicemanagement.googleapis.com",    // Required for cloudapis.googleapis.com
    "serviceusage.googleapis.com",
    "sourcerepo.googleapis.com",           // Check if needed in the future
    "sqladmin.googleapis.com",
    "sql-component.googleapis.com",
    "stackdriver.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
  ]
}