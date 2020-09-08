FROM image-registry.openshift-image-registry.svc:5000/common1/httpd:v1.0

EXPOSE 8080
LABEL io.openshift.expose-services="8080:http"

RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf

USER 1001
