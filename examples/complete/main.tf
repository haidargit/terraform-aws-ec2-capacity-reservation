provider "aws" {
  region = var.region
}

module "ec2_capacity_reservation" {
  source = "../../"

  on_demand_reservation_instance_type           = var.on_demand_reservation_instance_type
  on_demand_reservation_ebs_optimized           = var.on_demand_reservation_ebs_optimized
  on_demand_reservation_instance_platform       = var.on_demand_reservation_instance_platform
  on_demand_reservation_availability_zone       = var.on_demand_reservation_availability_zone
  on_demand_reservation_instance_count          = var.on_demand_reservation_instance_count
  on_demand_reservation_end_date                = timeadd(timestamp(), var.on_demand_reservation_end_date)
  on_demand_reservation_instance_match_criteria = var.on_demand_reservation_instance_match_criteria
  tags                                          = var.tags
}
