FROM scratch AS ctx
COPY / /

# Base Image
FROM quay.io/fedora-ostree-desktops/kinoite:42

# Build script runner
RUN /ctx/scripts/main.sh && \
    ostree container commit
