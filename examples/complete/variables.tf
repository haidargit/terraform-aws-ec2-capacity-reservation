variable "region" {
  type        = string
  description = "AWS region"
}

variable "on_demand_reservation_instance_type" {
  type        = string
  description = "The instance type for which to reserve capacity"
}

variable "on_demand_reservation_ebs_optimized" {
  type        = bool
  description = "Indicates whether the Capacity Reservation supports EBS-optimized instances. If the selected instance type's reservation is EBS-optimized by default, we will not able to use non EBS-optimized option (i.e. `false` value)."
}

variable "on_demand_reservation_instance_platform" {
  type        = string
  description = "The type of operating system for which to reserve capacity"
}

variable "on_demand_reservation_availability_zone" {
  type        = string
  description = "Availability Zone the instance is launched in. If not set, will be launched in the first AZ of the region"
}

variable "on_demand_reservation_instance_count" {
  type        = number
  description = "The number of On-Demand instance quotas for which to reserve capacity"
}

variable "on_demand_reservation_end_date" {
  type        = string
  description = "Capacity Reservation expires in hour(s). When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values `YYYY-MM-DDTHH:MM:SSZ`"
}

variable "on_demand_reservation_instance_match_criteria" {
  type        = string
  description = "Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`."
}

variable "tags" {
  type        = map(string)
  description = <<-EOT
    tags (e.g. `{"Environment": "ProductionTest"}`).
    EOT
}
