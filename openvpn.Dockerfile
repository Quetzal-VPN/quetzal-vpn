FROM alpine:3.16
RUN apk add --update bash openvpn easy-rsa iptables  && \
    ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
COPY setup/ /etc/openvpn-setup
RUN chmod +x /etc/openvpn-setup/configure.sh
