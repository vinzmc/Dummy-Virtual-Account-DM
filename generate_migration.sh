#!/bin/bash

resourceDir="src/main/resources"
migrationDir="$resourceDir/db/migration"
latestVersion=$(ls "$migrationDir" | grep -Eo 'V[0-9]+' | sed 's/V//' | sort -n | tail -n 1)
newVersion=$((latestVersion + 1))
timestamp=$(date +%s)
migrationName="your_migration_name"
newMigrationFilename="V${newVersion}_${timestamp}.sql"

# Copy template.sql and rename it to the new migration filename
cp "$resourceDir/template.sql" "$migrationDir/$newMigrationFilename"

echo "$newMigrationFilename"
