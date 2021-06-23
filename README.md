# krkn

## docker-ayes
1. searched for latest litecoin image via dockerhub
2. selected most popular image with 150k+ pulls and 6 stars `uphold/litecoind`
3. adding to docker-compose file to run the daemon without any modifiers
4. comparing sha256 digest by getting sha256 checksum from dockerhub and tagging checksum in Dockerfile
