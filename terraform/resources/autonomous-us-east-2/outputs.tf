output "autonomous_function_name" {
  description = "Name of the lambda function."
  value       = aws_lambda_function.index.function_name
}