# Create workspace for scripts
FROM scratch as ctx
# Copy repo to workspace
COPY / /
# Base image selection
FROM quay.io/fedora/fedora-bootc:42
# Install desktop environment (KDE) in separate layer
RUN dnf install -y @kde-desktop
# Run build script
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/scripts/00-build.sh && \
# Commit changes
RUN ostree container commit