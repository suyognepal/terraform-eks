resource "aws_iam_user" "readonly" {
  name = "readonly"
}

resource "aws_iam_policy" "readonly_eks" {
  name = "AmazonEKSReadonlyPolicy"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "eks:DescribeCluster",
                "eks:ListClusters",
                "eks:ListNodegroups",
                "eks:DescribeNodegroup",
                "eks:ListFargateProfiles",
                "eks:DescribeFargateProfile",
                "eks:AccessKubernetesApi"
            ],
            "Resource": "*"
        }
    ]
}
POLICY
}

resource "aws_iam_user_policy_attachment" "readonly_eks" {
  user       = aws_iam_user.readonly.name
  policy_arn = aws_iam_policy.readonly_eks.arn
}

resource "aws_eks_access_entry" "readonly" {
  cluster_name      = aws_eks_cluster.eks.name
  principal_arn     = aws_iam_user.readonly.arn
  kubernetes_groups = ["my-viewer"]
}
