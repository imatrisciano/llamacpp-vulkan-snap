#!/bin/bash

# This command-chain script is used to set up the VK_ICD_FILENAMES environment variable
# to allow Vulkan to locate the appropriate ICD (Installable Client Driver) JSON files.
# This is needed for Vulkan applications to correctly find and use the GPU.

for icd_file in "$VULKAN_ICD_PATH/"*.json; do
  if [ -z "$VK_ICD_FILENAMES" ]; then
    VK_ICD_FILENAMES="$icd_file"
  else
    VK_ICD_FILENAMES="$VK_ICD_FILENAMES:$icd_file"
  fi
done

export VK_ICD_FILENAMES

exec "$@"