# Write a Dockerfile to run Litecoin 0.18.1 in a container.
FROM uphold/litecoin-core:0.18.1@sha256:fb3148b0ca9fb3075ea7670c1690d4fa8bcf323d72a4c7192d8da235d95ee994

LABEL maintainer='dehvonc@acme.com'
LABEL litecoin-core='0.18.1'

RUN mkdir -p "$LITECOIN_DATA"
RUN chmod 770 "$LITECOIN_DATA"
RUN chown -R litecoin "$LITECOIN_DATA"

# CVE Remediation (not all)
RUN apt update -y 
RUN apt upgrade -y

# Run as a normal user
USER litecoin

# Pass image security test Anchore / trivy
