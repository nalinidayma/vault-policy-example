# Engineer policy

# List ACL policies
path "sys/policies/acl" {
  capabilities = ["list"]
}

path "sys/policies/acl/*" {
  capabilities = [ "read", "list"]
}

# List auth methods
path "auth/*" {
  capabilities = ["list"]
}

path "sys/auth/*" {
  capabilities = ["list", "read"]
}

# List existing secrets engines
path "sys/mounts" {
  capabilities = ["read", "list"]
}

# Manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "list"]
}

# Create and manage default kv secret engine
path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}
# Create and manage other kv2 secret engines
path "devops-secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}
path "webapp-secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Full access to engineering namespace
path "engineering/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

