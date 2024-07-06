#!/bin/bash

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
