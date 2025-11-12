#!/usr/bin/env bash

set -x

podman run \
    --secret $AUTH_SECRET \
    quay.io/skopeo/stable:latest \
    inspect \
    --authfile \
    /run/secrets/$AUTH_SECRET "$@"