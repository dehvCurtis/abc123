FROM uphold/litecoin-core:0.18.1

# RUN chmod 770 /home/litecoin/.litecoin
# RUN chown -R litecoin "$LITECOIN_DATA"

# USER litecoin
# RUN litecoind -regtest=1
# ENTRYPOINT ["./entrypoint.sh"]