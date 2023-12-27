output "website_cdn_id" {
  value = aws_cloudfront_distribution.website_cdn.id
}

output "website_endpoint" {
  value = aws_cloudfront_distribution.website_cdn.domain_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}