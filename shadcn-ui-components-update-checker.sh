#!/bin/bash

set -e

# Check for directory parameter
if [ $# -eq 0 ]; then
    echo "Usage: $0 <react_project_directory_path>"
    exit 1
fi

# Change to the specified directory
echo "📂 $1"
cd "$1" || { echo "Cannot change to specified directory: $1"; exit 1; }


# Run 'npx shadcn-ui@latest diff' and get the result
diff_output=$(npx shadcn-ui@latest diff)

# Extract components with differences
components=$(echo "$diff_output" | grep '^- ' | awk '{print $2}')

if [ -z "$components" ]; then
  echo "✅ No updates found"
  exit 0
else
  echo "🔄 Updates found"
fi

# Process each component
for component in $components; do
  echo -e "\n🔌 Differences found in '\e[1;33m$component\e[0m' component:"
  echo -e "- Diff: 'npx shadcn-ui@latest diff \e[1;33m$component\e[0m'"
  echo -e "- Update: 'npx shadcn-ui@latest add \e[1;33m$component\e[0m'"
done


# Return to the original directory
cd - > /dev/null
