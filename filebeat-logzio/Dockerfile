FROM docker.elastic.co/beats/filebeat:5.6.3

# Including cert
RUN mkdir -p /etc/pki/tls/certs;
ADD files/COMODORSADomainValidationSecureServerCA.crt /etc/pki/tls/certs/