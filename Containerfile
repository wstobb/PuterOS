FROM scratch as ctx
COPY / /
FROM quay.io/fedora-ostree-desktops/kinoite:42
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/scripts/00-build.sh && \
    ostree container commit
