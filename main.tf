provider "aws" {
    region = "us-east-2"
}


module "eks" {
    source = "./modules/eks"
    project = "cbz"
    desired_nodes = 2
    max_nodes  = 2
    min_nodes  = 2
    node_instance_type = "t3.medium"
}

