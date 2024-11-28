#!/bin/bash

# Login to Azure (make sure you have already authenticated)
az login --identity # This uses the Managed Identity of the VM, if on an Azure VM

# Input CSV file
CSV_FILE="$1"

# Read the CSV and update tags
while IFS=, read -r ResourceName Environment Owner; do
    if [[ "$ResourceName" != "ResourceName" ]]; then
        echo "Updating tags for resource: $ResourceName"
        # Update tags on the resource in Azure
        az resource tag --ids $(az resource list --name "$ResourceName" --query "[].id" -o tsv) --tags Environment="$Environment" Owner="$Owner"
    fi
done < "$CSV_FILE"
