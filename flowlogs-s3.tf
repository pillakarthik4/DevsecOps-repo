resource "aws_s3_bucket" "devsecops_flowlog_bucket-1" {
  bucket = "devsecopsflowlogbucket-1"

  tag = {d
    Name        = "devsecopsflowlogbucket-1"
    Enviornment = "Dev"
  }
  depends_on = [aws_s3_bucket.devsecops_flowlog_bucket-2]
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_s3_bucket" "devsecops_flowlog_bucket-2" {
  bucket = "devsecopsflowlogbucket-2"

  tag = {
    Name        = "devsecopsflowlogbucket-2"
    Enviornment = "Dev"
  }
  depends_on = [aws_s3_bucket.devsecops_flowlog_bucket-3]
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_s3_bucket" "devsecops_flowlog_bucket-3" {
  bucket = "devsecopsflowlogbucket-3"

  tag = {
    Name        = "devsecopsflowlogbucket-3"
    Enviornment = "Dev"
  }
  depends_on = [aws_route_table_association.terraform-public-1]
  lifecycle {
    create_before_destroy = true
  }
}