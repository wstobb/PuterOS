# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx
COPY / /

# Base Image
FROM quay.io/fedora-ostree-desktops/kinoite:42

# Build script runner form UBlue
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/scripts/main.sh && \
    ostree container commit
    
# Lint
RUN bootc container lint
