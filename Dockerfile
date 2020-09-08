FROM default-route-openshift-image-registry.apps-crc.testing/common1/httpd:v1.0

EXPOSE 8080
LABEL io.openshift.expose-services="8080:http"

RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
RUN chgrp -R 0 /usr/local/apache2/logs && \
    chmod -R g=u /usr/local/apache2/logs

USER 1001
