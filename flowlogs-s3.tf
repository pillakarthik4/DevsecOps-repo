resource "aws_s3_bucket" "devsecops_flowlog_bucket_1" {
  bucket = "devsecopsflowlogbucket-1"

  tags = {
    Name        = "devsecopsflowlogbucket-1"
    Environment = "Dev"
  }

  depends_on = [aws_s3_bucket.devsecops_flowlog_bucket_2]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_s3_bucket" "devsecops_flowlog_bucket_2" {
  bucket = "devsecopsflowlogbucket-2"

  tags = {
    Name        = "devsecopsflowlogbucket-2"
    Environment = "Dev"
  }

  depends_on = [aws_s3_bucket.devsecops_flowlog_bucket_3]

  lifecycle {
    create_before_destroy = true
  }
}
