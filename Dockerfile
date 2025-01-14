ARG PACKER_VERSION=1.7.3
FROM hashicorp/packer:$PACKER_VERSION

LABEL maintainer="Marcelo Dellacroce Mansur <mansur.ufmg@gmail.com>"

RUN apk add --no-cache ansible=2.10.7-r0 py-pip=20.3.4-r1 openssh=8.6_p1-r3 \
  # Fix CVE-2021-36159
  && apk add --no-cache --upgrade apk-tools==2.12.7-r0 \
  # Fix CVE-2021-22922 CVE-2021-22923 CVE-2021-22924 CVE-2021-22925
  libcurl=7.79.1-r2 \
  # Fix CVE-2021-3711 CVE-2021-3712
  openssl=1.1.1q-r0


ENTRYPOINT ["/bin/packer"]
