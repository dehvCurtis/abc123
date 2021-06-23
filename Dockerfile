# Write a Dockerfile to run Litecoin 0.18.1 in a container.
FROM uphold/litecoin-core:0.18.1 

# Verify the checksum of the downloaded release (there's no need to build the project)

# Run as a normal user
# USER litecoin

# Pass image security test Anchore / trivy

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
