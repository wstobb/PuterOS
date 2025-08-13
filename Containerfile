FROM scratch as ctx
COPY / /
FROM quay.io/fedora/fedora-bootc:42
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/install_scripts/00-build.sh && \
    ostree container commit
