default_lease_ttl = "24h"
max_lease_ttl = "43800h"

storage "file" {
    path = "/vault/file"
}

plugin_directory = "/vault/plugins"

ui = true

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_cert_file = "/vault/config/server.crt"
    tls_key_file = "/vault/config/private-key.pem"
}
