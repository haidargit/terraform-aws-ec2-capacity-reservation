output "ec2_capacity_reservation_id" {
  value = module.ec2_capacity_reservation.ec2_capacity_reservation_id
  description = "The Capacity Reservation ID"
}

output "ec2_capacity_reservation_owner_id" {
  value = module.ec2_capacity_reservation.ec2_capacity_reservation_owner_id
  description = "The ID of the AWS account that owns the Capacity Reservation"
}

output "ec2_capacity_reservation_arn" {
  value = module.ec2_capacity_reservation.ec2_capacity_reservation_arn
  description = "The ARN of the Capacity Reservation"
}

output "ec2_capacity_reservation_tags_all" {
  value = module.ec2_capacity_reservation.ec2_capacity_reservation_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block"
}
