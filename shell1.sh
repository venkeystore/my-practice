#!/bin/bash

# Define Prometheus server URL
PROMETHEUS_URL="http://<prometheus-server-url>:<port>"

# Query Prometheus API for current alerts
RESPONSE=$(curl -s "${PROMETHEUS_URL}/api/v1/alerts")

# Check if the response contains data
if echo "$RESPONSE" | jq -e . >/dev/null 2>&1; then
    # Parse the JSON response to extract alert information
    echo "$RESPONSE" | jq -r '
    .data.alerts[] | 
    "\(.labels.alertname) \(.labels.instance) \(.state) \(.activeAt)"
    '
else
    echo "Failed to retrieve alerts from Prometheus"
fi
