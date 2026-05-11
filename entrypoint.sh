#!/bin/bash
set -e

# Fix ownership of any workspace files not owned by node (e.g. files copied in from a Mac host)
chown -R node:node /workspace 2>/dev/null || true

exec gosu node "$@"
