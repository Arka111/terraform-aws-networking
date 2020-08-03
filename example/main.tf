provider "aws" {
  region = "eu-central-1"
}


module "networking" {

  source              = "../"
  vpc_name            = "vpc-dev"
  environment         = "dev"
  azs                 = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  public_ip_on_launch = "true"
  vpc_cidr_block      = "192.168.0.0/16"
  public_subnets      = ["192.168.0.0/19", "192.168.32.0/19", "192.168.64.0/19"]
  private_subnets     = ["192.168.96.0/19", "192.168.128.0/19", "192.168.160.0/19"]
	enable_nat_gateway  =true

  tags = {

    "kubernetes.io/cluster/dnl-eks-dev-cluster" = "shared"
  }

}
