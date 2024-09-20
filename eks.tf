resource "aws_eks_cluster" "fiap_fast_food_eks" {
  name     = "fiap_fast_food_eks"
  role_arn = var.lab_role

  vpc_config {
    subnet_ids = [
      aws_subnet.subnet-msv-1a.id, 
      aws_subnet.subnet-msv-1b.id, 
      aws_subnet.subnet-msv-2a.id,
      aws_subnet.subnet-msv-2b.id
    ]
  }
  
  #depends_on = [
  #  aws_iam_role_policy_attachment.fiap_fast_food_eks_amazon_eks_cluster_policy,
  #  aws_iam_role_policy_attachment.fiap_fast_food_eks_amazon_eks_resource_controller,
  #]
}