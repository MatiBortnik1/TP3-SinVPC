data "aws_iam_role" "role" {
  name = "LabRole"  # Asegúrate de que este rol existe
}
data "aws_caller_identity" "current" {}
