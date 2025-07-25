FROM scratch

LABEL operators.operatorframework.io.bundle.channel.default.v1=stable
LABEL operators.operatorframework.io.bundle.channels.v1=stable,stable-v1.12,stable-v1.12.4
LABEL operators.operatorframework.io.bundle.manifests.v1=manifests/
LABEL operators.operatorframework.io.bundle.mediatype.v1=registry+v1
LABEL operators.operatorframework.io.bundle.metadata.v1=metadata/
LABEL operators.operatorframework.io.bundle.package.v1=ibm-block-csi-operator-community

COPY manifests /manifests/
COPY metadata /metadata/
LABEL com.redhat.openshift.versions="v4.15-v4.19"
LABEL com.redhat.delivery.operator.bundle=true
