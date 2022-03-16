#!/bin/bash

EXPECTED_ARGS=1

# make sure we have the expected number of args
if [ $# -lt ${EXPECTED_ARGS} ]; then
    echo "Incorrect args: $#"
    echo "Usage: $0 <server_name>"
    for var in "$@"; do
        echo $var
    done
    exit 1
fi

SERVER_NAME=$1

mkdir -p generated
rm generated/*

# create the TLS cert
openssl ecparam -name secp521r1 -genkey -noout -out generated/private-key.pem
openssl req -new -x509 \
    -key generated/private-key.pem \
    -out generated/server.crt \
    -days 365 -nodes -sha512 \
    -subj "/CN=$SERVER_NAME" \
    -addext "subjectAltName = DNS:$SERVER_NAME"
