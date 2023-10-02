#!/bin/bash

# Default values
MODE="dev"
SERVICES=()

# Check if whiptail is installed
if ! command -v whiptail &>/dev/null; then
    echo "whiptail is not installed. Please install it before running this script."
    exit 1
fi

# Show the mode selection dialog
MODE=$(whiptail --title "Select Mode" --menu "Choose the mode:" 15 50 2 \
    "dev" "Development" \
    "prod" "Production" \
    3>&1 1>&2 2>&3)

# Check if the user canceled the mode selection
if [ $? -ne 0 ]; then
    echo "Mode selection canceled."
    exit 1
fi

# Show the service selection dialog
while true; do
    SERVICE=$(whiptail --title "Select Services" --separate-output --checklist "Select services to run (use spacebar to toggle, Enter to finish):" 20 50 5 \
        "frontend" "Frontend" OFF \
        "backend" "Backend" OFF \
        "directus" "Directus" OFF \
        "database" "Database" OFF \
        "cache" "Cache" OFF \
        3>&1 1>&2 2>&3)

    # Check if the user canceled the service selection
    if [ $? -ne 0 ]; then
        echo "Service selection canceled."
        exit 1
    fi

    # Convert the selected services to an array
    SERVICES=($SERVICE)

    # Check if at least one service is selected
    if [ ${#SERVICES[@]} -gt 0 ]; then
        break
    else
        whiptail --title "Error" --msgbox "You must select at least one service." 10 50
    fi
done

# Now you can use the MODE and SERVICES variables to build your Docker Compose command.
# Example:
docker-compose -f docker-compose.$MODE.yml up "${SERVICES[@]}"
