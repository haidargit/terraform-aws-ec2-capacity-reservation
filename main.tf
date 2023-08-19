resource "aws_ec2_capacity_reservation" "default" {
  instance_type           = var.on_demand_reservation_instance_type
  ebs_optimized           = var.on_demand_reservation_ebs_optimized
  ephemeral_storage       = var.ephemeral_storage
  instance_platform       = var.on_demand_reservation_instance_platform
  availability_zone       = var.on_demand_reservation_availability_zone
  tenancy                 = var.on_demand_reservation_tenancy
  instance_count          = var.on_demand_reservation_instance_count
  end_date                = timeadd(timestamp(), var.on_demand_reservation_end_date)
  end_date_type           = var.on_demand_reservation_end_date_type
  instance_match_criteria = var.on_demand_reservation_instance_match_criteria
  tags                    = var.tags
}
