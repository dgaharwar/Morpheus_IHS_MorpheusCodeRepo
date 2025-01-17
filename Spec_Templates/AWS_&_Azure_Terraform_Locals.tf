locals {

# Common tags to be assigned to all AWS resources and Azure Resource Groups

  default_tags = {
    Name = "test"
    PrimaryContact = "test"
    SecondaryContact = "test"
    NotificationPDL = "test"
    ApplicationName = "test"
    Environment = "test"
    ITOwnerEmail = "test"
  }

# Common tags to be assigned to all Azure resources (App Name and ITOwner are inherited from the resource group level

  azure_resource_default_tags = {
    Name = "test"
    PrimaryContact = "test"
    SecondaryContact = "test"
    NotificationPDL = "test"
    Environment = "test"
  }

  instance_options = {
    name = "test"
    domainName = "test"
    securitygroups = "test"
  }

  cloud_options = {
    region = "test"
    account = "test"
    rg_name = "test"
    iam_user_name = "test"
    azure_sku = "test"
  }
}
