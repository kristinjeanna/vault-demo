# vault-demo

[![GitHub license](https://img.shields.io/github/license/kristinjeanna/vault-demo.svg?style=flat)](https://github.com/kristinjeanna/vault-demo/blob/main/LICENSE) ![Last commit](https://img.shields.io/github/last-commit/kristinjeanna/vault-demo?style=flat)

A simple [Vault](https://www.vaultproject.io/) server with a more prod-like configuration than the `-dev` server.

## How to set up

1. Clone the repo.

2. Run the `generate-cert.sh` script to generate a certificate in the `generated/` directory. The script requires 1 argument, the name of the server, such as `vault.local`.

    ```shell
    ./generate-cert vault.local
    ```

3. Launch the Vault server via:

    ```shell
    docker-compose up -detach
    ```

    *Note: omit the `-detach` flag if you wish not to run the vault 