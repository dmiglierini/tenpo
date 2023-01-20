resource "aws_s3_bucket" "tenpoBucket" {
  bucket = "tenpo-bucket"

  tags = {
    Name        = "My Tenpo Bucket"
    Environment = "prod"
  }
}
resource "aws_s3_bucket_acl" "sec" {
  bucket = aws_s3_bucket.tenpoBucket.id
  acl    = "private"
}