data "archive_file" "autonomous_zip_package" {
  type        = "zip"

  source_dir  = "../../../autonomous"
  output_path = "autonomous.zip"

}

data "aws_iam_policy_document" "autonomous_lambda_iam_policy" {
  statement {
    sid    = ""
    effect = "Allow"

    principals {
      identifiers = ["lambda.amazonaws.com"]
      type        = "Service"
    }

    actions = ["sts:AssumeRole"]
  }
}