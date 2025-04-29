#!/usr/bin/env bash

if [[ -n "$UNITY_EMAIL" && -n "$UNITY_PASSWORD" ]]; then
  unity-editor \
    -logFile /dev/stdout \
    -quit \
    -batchmode \
    -returnlicense \
    -username $UNITY_EMAIL \
    -password $UNITY_PASSWORD
else
  echo "UNITY_EMAIL or UNITY_PASSWORD not detected! No license was returned."
fi
