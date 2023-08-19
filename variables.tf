variable "region" {
  type        = string
  default     = "ap-southeast-1"
  description = "awsregion"
}

variable "on_demand_reservation_instance_type" {
  type        = string
  description = "The instance type for which to reserve capacity"
  default     = "t2.micro"
}

variable "on_demand_reservation_ebs_optimized" {
  type        = bool
  description = "Indicates whether the Capacity Reservation supports EBS-optimized instances. If the selected instance type's reservation is EBS-optimized by default, we will not able to use non EBS-optimized option (i.e. `false` value)."
  default     = true
}

variable "ephemeral_storage" {
  type        = bool
  description = "Indicates whether the Capacity Reservation supports instances with temporary, block-level storage."
  default     = false
}

variable "on_demand_reservation_instance_platform" {
  type        = string
  description = "The type of operating system for which to reserve capacity"
  default     = "Linux/UNIX"
}

variable "on_demand_reservation_availability_zone" {
  type        = string
  description = "Availability Zone the instance is launched in. If not set, will be launched in the first AZ of the region"
  default     = ""
}

variable "on_demand_reservation_tenancy" {
  type        = string
  default     = "default"
  description = "Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`. A tenancy of 'default' runs on shared hardware, while 'dedicated' runs on a dedicated instance. Valid values are 'default' and 'dedicated'."
  validation {
    condition     = contains(["default", "dedicated"], lower(var.on_demand_reservation_tenancy))
    error_message = "Tenancy field can only be one of default, dedicated."
  }
}

variable "on_demand_reservation_instance_count" {
  type        = number
  description = "The number of On-Demand instance quotas for which to reserve capacity"
  default     = 1
}

variable "on_demand_reservation_end_date" {
  type        = string
  description = "Capacity Reservation expires in hour(s). When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values `YYYY-MM-DDTHH:MM:SSZ`"
  default     = "3h"
}

variable "on_demand_reservation_end_date_type" {
  type        = string
  default     = "limited"
  description = "Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`. if the capacity reservation has no end date or `unlimited`. It will remain active in your account and continue to be billed until you manually cancel it or destroy thi resource."
}

variable "on_demand_reservation_instance_match_criteria" {
  type        = string
  description = "Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`."
  default     = "targeted"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = <<-EOT
    tags (e.g. `{"Environment": "ProductionTest"}`).
    EOT
}
