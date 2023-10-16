resource "aws_eks_cluster" "mfh-eks" {
  name     = "mfh-cluster"
  role_arn = aws_iam_role.eks-iam-role.arn

  vpc_config {
    subnet_ids = [var.subnet_id_1, var.subnet_id_2, var.subnet_id_3]
  }

  depends_on = [
    aws_iam_role.eks-iam-role,
  ]
}
