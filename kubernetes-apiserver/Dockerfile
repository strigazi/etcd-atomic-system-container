FROM registry.fedoraproject.org/f25/kubernetes-master:latest
MAINTAINER "Jason Brooks" <jbrooks@redhat.com>

ENV container=docker

ENV NAME=kubernetes-apiserver VERSION=0.1 RELEASE=8 ARCH=x86_64
LABEL BZComponent="$NAME" \
        Name="$FGC/$NAME" \
        Version="$VERSION" \
        Release="$RELEASE.$DISTTAG" \
        Architecture="$ARCH" \
        atomic.type='system'

COPY launch.sh /usr/bin/kube-apiserver-docker.sh

LABEL RUN /usr/bin/docker/ run -d --net=host -p 443:443

COPY service.template config.json.template /exports/

ENTRYPOINT ["/usr/bin/kube-apiserver-docker.sh"]
