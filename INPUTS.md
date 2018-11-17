## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| consortium_name | Consortium name | string | `DevFest Consortium` | no |
| env_types | List of environment types you want to deploy. Options are 'quorum' and 'geth'. | list | `<list>` | no |
| kaleido_api | Kaleido API URL | string | - | yes |
| kaleido_api_key | Kaleido API Key | string | - | yes |
| kaleido_region | Can be 'ap' for Sydney, or 'eu' for Frankfurt. Defaults to us | string | `eu` | no |
| org_name | Organization Name | string | `DevFest Org` | no |
| quorum_consensus | Consensus methods supported by quorum. | list | `<list>` | no |

