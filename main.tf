provider "kaleido" {
  api = "${var.kaleido_api}"
  api_key = "${var.kaleido_api_key}"
}

/*
This represents a Consortia. Give it a name and a description.
"mode" can be set to "single-org" or ...
*/
resource "kaleido_consortium" "demo" {
  name = "${var.consortium_name}"
  description = "Deployed with Terraform"
  mode = "single-org"
}

/*
This creates a membership, you can give it any "org_name" you like, but it has
to be linked to a Consortium via the Consortium resource "id".
*/
resource "kaleido_membership" "dublin" {
  consortium_id = "${kaleido_consortium.demo.id}"
  org_name = "${var.org_name}"
}

/*
Creates environments in Consortia.
*/
resource "kaleido_environment" "staging" {
  consortium_id = "${kaleido_consortium.demo.id}"
  name = "Staging"
  description = "Deployed with Terraform"
  env_type = "${element(var.env_types, 0)}"
  consensus_type = "${element(var.quorum_consensus, 1)}"
}

/*
Creates a node in each environment, must be linked to a consortium, environment, and membership.
*/
resource "kaleido_node" "node" {
  count = 3
  consortium_id = "${kaleido_consortium.demo.id}"
  environment_id = "${kaleido_environment.staging.id}"
  membership_id = "${kaleido_membership.dublin.id}"
  name = "node-${count.index+1}"
}

/*
Creates an invitation to join
*/

resource "kaleido_invitation" "TestOrg" {
  consortium_id = "${kaleido_consortium.demo.id}"
  org_name = "Test Org"
  email = "ricardo@larosasanoja.com"
}
