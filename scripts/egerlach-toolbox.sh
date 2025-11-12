#!/bin/sh

set -x

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update --assumeyes
dnf install --assumeyes rpmfusion-free-release-tainted
grep -v '^#' ./egerlach-toolbox.packages | xargs dnf install --assumeyes

# Install ProtonMail Bridge
./install-protonmail-bridge.sh

# Clean up
dnf clean all