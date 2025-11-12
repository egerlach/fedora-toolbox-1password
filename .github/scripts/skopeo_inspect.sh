#!/usr/bin/env bash

podman run \
    --secret $AUTH_SECRET \
    quay.io/skopeo/stable:latest \
    inspect \
    --authfile \
    /run/secrets/$AUTH_SECRET "$@"