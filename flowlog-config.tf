resource "aws_flow_log" "devsecopsflowlog" {
  log_destination      = aws_s3_bucket.devsecops_flowlog_bucket-1.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.DevOps-vpc1.id
}