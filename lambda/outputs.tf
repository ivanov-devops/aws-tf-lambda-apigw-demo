output "lambda_bucket_name" {
  description = "Name of the S3 bucket used to store function code."
  value = aws_s3_bucket.lambda_bucket.id
}

output "func_name" {
  description = "Name of the Lambda function."
  value = aws_lambda_function.hello_world.function_name
}

output "in_uri" {
  description = "Lambda invoke arn"
  value = aws_lambda_function.hello_world.invoke_arn
}
