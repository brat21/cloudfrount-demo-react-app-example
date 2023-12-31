output "s3_state_bucket_name" {
  value = aws_s3_bucket.tfstate[*].bucket
}

output "dynamo_db_table_name" {
  value = aws_dynamodb_table.terraform[*].name
}