#!/bin/sh -l

# Use INPUT_<INPUT_NAME> to get the value of an input
GREETING="Hello, $INPUT_WHO_TO_GREET!"

# Use workflow commands to do things like set debug messages
echo "::notice file=entrypoint.sh,line=7::$GREETING"

# Write outputs to the $GITHUB_OUTPUT file (only if running in GitHub Actions)
if [ -n "$GITHUB_OUTPUT" ]; then
  echo "time=$(date)" >>"$GITHUB_OUTPUT"
else
  echo "time=$(date)"
fi

exit 0
