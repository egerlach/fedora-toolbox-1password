#!/bin/sh

set -x

PROTONMAIL_BRIDGE_RPM_URL=$(
    curl https://api.github.com/repos/ProtonMail/proton-bridge/releases/latest | jq -r '.assets[] | select(.name | endswith("rpm")).browser_download_url'
)

dnf install --assumeyes $PROTONMAIL_BRIDGE_RPM_URL