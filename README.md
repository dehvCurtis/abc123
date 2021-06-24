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