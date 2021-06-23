echo 'Pulling uphold/litecoin-core:0.18.1 Docker Image'
docker pull uphold/litecoin-core:0.18.1 | grep -o 'sha256.*'
docker images --digests --format '{{.Digest}}'

