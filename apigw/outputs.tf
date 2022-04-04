output "base_url" {
  description = "Base URL for apigw stage."

  value = aws_apigatewayv2_stage.lambda.invoke_url
}
