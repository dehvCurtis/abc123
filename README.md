# abc123

## docker-ayes
1. Write a Dockerfile to run Litecoin 0.18.1 in a container (see `Dockerfile`)
2. verify the checksum of the downloaded release (verified in `Dockerfile` image definition)
3. run as a normal user (running as litecoin user)
4. run without any modifiers (handled by `Makefile`)
 - should run the daemon (handled by `docker-compose.yml`)
 - print its output to the console (handled by `docker-compose.yml`)
5. Build should be security conscious (added anchore grype and trivy scanner. was having issues where grype would not recognize commands from `docker-compose`, so i stuffed them into a `Dockerfile` and called the file.)

### Use the following to command to run litecoin and trivy scanner build
`make build`

# K8s FTW
1. Write a Kubernetes StatefulSet to run the above, using persistent volume claims and resource limits. (Complete. see `*-deployment.yaml`. Had difficulty with getting the PVC to work properly, used a friend for assistance.)

# All the Continuouses
1. Write a simple build and deployment pipeline (I don't have much exp with Travis or Jenkins, so I wrote an Azure Pipeline `azure-pipeline.yaml`)

# Script Kiddies
1. Source or come up with a text manipulation problem (Solved with `awk` and `sed`, see script-kiddies.sh)
    reference for awk: https://askubuntu.com/questions/20414/find-and-replace-text-within-a-file-using-commands

# Script Grown-Ups
1. Solve the problem in question 4 using any programming language (solved in `Python3`)

# Terraform Lovers Unite
- A role, with no permissions, which can be assumed by users within the same account (`aws_iam_role.tf`, referenced template from Hashicorp https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)
- A policy, allowing users / entities to assume the above role (`aws_iam_user_group_membership.tf`, referenced template from Hashicorp https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership)
- A group, with the above policy attached (`aws_iam_user_policy.tf`, referenced template from Hashicorp https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group)
- A user, belonging to the above group. (`aws_iam_user.tf`, referenced template from Hashicorp https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership)

# Extra Security
1. Added `$DOCKER_CONTENT_TRUST` to `.env` file (validates image authenticity)
2. Double coverage CVE Scan with `trivy` & `grype` (both output results to terminal)
3. Verify docker image (added `export DOCKER_CONTENT_TRUST=1` to env vars)
4. Image should be pulled from private repo (suggestion)
