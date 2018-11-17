variable "kaleido_api" {
  type = "string"
  description = "Kaleido API URL"
}
variable "kaleido_api_key" {
  type = "string"
  description = "Kaleido API Key"
}
variable "kaleido_region" {
  type = "string"
  description = "Can be 'ap' for Sydney, or 'eu' for Frankfurt. Defaults to us"
  default = "eu"
}

variable "consortium_name" {
  description = "Consortium name"
  default = "DevFest Consortium"
}
variable "org_name" {
  description = "Organization Name"
  default = "DevFest Org"
  
}

variable "env_types" {
  type = "list"
  default = ["quorum", "geth"]
  description = "List of environment types you want to deploy. Options are 'quorum' and 'geth'."
}

variable "quorum_consensus" {
  type = "list"
  default = ["raft", "ibft"]
  description = "Consensus methods supported by quorum."
}