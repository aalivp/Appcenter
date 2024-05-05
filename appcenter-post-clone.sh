#!/usr/bin/env bash

# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

# Download App Center SDK frameworks
curl -O https://www.dropbox.com/scl/fi/tdwdzp1nqp48cne5k9zjj/AppCenter-SDK-Apple-PrivacyManifest.zip?rlkey=sqkxmztz8ujv7qyfufdlk60wb&e=3&st=rxsmf40l&dl=1

# Unzip files to framework location
unzip Appcenter.zip

# Move app-secret's values for Apple apps to config.
b64FileName="appcenter-sdk-apple-test-apps-secrets.b64"
echo ${APPLE_APP_SECRETS} >> ${b64FileName}
base64 -D -i ${b64FileName} -o "Config/AppCenterSecrets.xcconfig"
