# krkn

## docker-ayes
1. Write a Dockerfile to run Litecoin 0.18.1 in a container
    `complete`
2. verify the checksum of the downloaded release
    `verified in Dockerfile image definition`
3. run as a normal user 
    `running as litecoin user`
4. run without any modifiers
    `Makefile`
 - should run the daemon
    `handled by docker-compose.yml`
 - print its output to the console
    `handled by docker-compose.yml` 
5. Build should be security conscious
    `added trivy scanner`

use the following to command to run litecoin and trivy scanner build

`make build`

# K8s FTW

1. Write a Kubernetes StatefulSet to run the above, using persistent volume claims and resource limits.

# Extra Security
1. Added to `.env` (incomplete)
2. CVE Scan with `trivy` (created upon build, see `cve-findings.json)