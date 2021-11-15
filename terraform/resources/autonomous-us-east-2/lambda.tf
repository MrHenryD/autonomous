resource "aws_iam_role" "autonomous_lambda_role" {
  name               = "autonomous_lambda_role"
  assume_role_policy = data.aws_iam_policy_document.autonomous_lambda_iam_policy.json
}

resource "aws_lambda_function" "index" {
  function_name = "autonomous_app_index"

  filename         = data.archive_file.autonomous_zip_package.output_path
  source_code_hash = data.archive_file.autonomous_zip_package.output_base64sha256

  role    = aws_iam_role.autonomous_lambda_role.arn
  handler = "app.index"
  runtime = var.python_runtime

}
