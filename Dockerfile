FROM mosaicgreifswald/wildfly:26
ADD ./deployments /entrypoint-wildfly-deployments
ADD ./jboss /entrypoint-wildfly-cli
ADD ./addins /entrypoint-wildfly-addins
USER root
RUN chown -R 1111:1111 /entrypoint-wildfly-deployments /entrypoint-wildfly-cli /entrypoint-wildfly-addins
USER 1111
ENTRYPOINT ["/bin/bash"]
CMD ["-c","./run.sh"]