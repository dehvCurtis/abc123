# krkn

## docker-ayes
1. Write a Dockerfile to run Litecoin 0.18.1 in a container (see `Dockerfile`)
2. verify the checksum of the downloaded release (verified in `Dockerfile` image definition)
3. run as a normal user (running as litecoin user)
4. run without any modifiers (handled by `Makefile`)
 - should run the daemon (handled by `docker-compose.yml`)
 - print its output to the console (handled by `docker-compose.yml`)
5. Build should be security conscious (added trivy scanner)

use the following to command to run litecoin and trivy scanner build

`make build`

# K8s FTW

1. Write a Kubernetes StatefulSet to run the above, using persistent volume claims and resource limits.

# Write a simple build and deployment pipeline

# Script Kiddies
1. Source or come up with a text manipulation problem (Solved with `awk` and `sed`, see script-kiddies.sh)
    reference for awk: https://askubuntu.com/questions/20414/find-and-replace-text-within-a-file-using-commands

# Script grown-ups
1. Solve the problem in question 4 using any programming language (solved in `Python3`)

# Extra Security
1. Added to `.env` (incomplete)
2. CVE Scan with `trivy` (created upon build, see `cve-findings.json)
3. Verify docker image (added `export DOCKER_CONTENT_TRUST=1` to env vars)
4. Signed image (incomplete)