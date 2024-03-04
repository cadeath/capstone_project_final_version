#!/bin/bash

sleep 5
if ! mysql -h localhost -u root hydro < /docker/database/hydro.sql; then
    echo "Failed to import"
    exit 1
fi
