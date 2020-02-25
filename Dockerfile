FROM alpine:3.11.3
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG TEAMCITY_VERSION=2019.2.2

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/bin \
    JAVA_TOOL_OPTIONS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap" \
    GLIBC_REPO=https://github.com/sgerrand/alpine-pkg-glibc \
    GLIBC_VERSION=2.30-r0

ENV CONFIG_FILE=/data/teamcity_agent/conf/buildAgent.properties

RUN apk add --no-cache \
        ca-certificates \
        git \
        mercurial \
        docker \
        curl \
        bash \
        sudo ;\
    rm -rf /tmp/* /var/cache/apk/*

RUN set -ex ;\
    wget -q https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -O /etc/apk/keys/sgerrand.rsa.pub ;\
    for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do curl -sSL ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done ;\
    apk add /tmp/*.apk ;\
    rm -v /tmp/*.apk ;\
    ( /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true ) ;\
    echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh ;\
    /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib ;\
    apk add --no-cache openjdk8-jre ;\
    sed -i s/#networkaddress.cache.ttl=-1/networkaddress.cache.ttl=10/ $JAVA_HOME/jre/lib/security/java.security ;\
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf ;\
    apk del curl glibc-i18n ;\
    rm -rf /tmp/* /var/cache/apk/* ;\
    java -version

RUN wget -P /tmp/ https://download.jetbrains.com/teamcity/TeamCity-$TEAMCITY_VERSION.tar.gz ;\
    tar -xzf /tmp/TeamCity-$TEAMCITY_VERSION.tar.gz -C /tmp/ ;\
    adduser -D buildagent ;\
    mkdir -p /opt/buildagent ;\
    unzip -q /tmp/TeamCity/webapps/ROOT/update/buildAgent.zip -d /opt/buildagent ;\
    chmod +x /opt/buildagent/bin/*.sh ;\
    rm -rf /tmp/*

RUN adduser -S docker ;\
    addgroup docker buildagent ;\
    wget https://github.com/docker/compose/releases/download/v1.25.4/docker-compose-Linux-x86_64 -O /usr/local/bin/docker-compose ;\
    chmod +x /usr/local/bin/docker-compose ;\
    rm -rf /tmp/* /var/cache/apk/*

ADD data/ /

RUN chmod +x /*.sh

VOLUME /data/teamcity_agent/conf

EXPOSE 9090

CMD ["/run-services.sh"]
