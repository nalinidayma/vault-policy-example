# HashiCorp Vault - sample policies
- Policies in HashiCorp Vault allow you to manage access control over Vault operations and access to secret/paths.
- Vault policies are usually designed based on Personas or a role for example a restrictive read-only policy for an application to read just KV secret engine path, or an admin policy with super powers to manage configurations of vault.
- Here are a few examples to get you started:
  1. Policy for a [Vault Administrator](examples/policies/admin-policy.hcl)
      - this policy grants vault super powers to a human user
  2. Policy for an  [Application](examples/policies/app-policy.hcl)
      - this policy grants read-only access to a web-application to KV engine path `webapp-secret/` allowing the web-app to read it's credentials or other relevant secrets
  3. Policy for an [Engineer](examples/policies/engineer-policy.hcl)
      - this policy grants read-write access to a human user to KV engine paths `webapp-secret/ and devops-secret/` as well as read-only permissions to list auth-engines and secret-engines.

# Creating a policy

Syntax: `vault policy write <policy-name> <policy file-path>`

Example: `vault policy write admin-policy examples/policies/admin-policy.hcl`

Please refer to below learn guides to understand how Policies work in HashiCorp Vault:
- https://developer.hashicorp.com/vault/docs/concepts/policies

