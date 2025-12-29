#!/bin/sh
set -e

echo "Waiting for Redis..."
until redis-cli -h "$SPRING_REDIS_HOST" ping | grep -q PONG; do
  sleep 2
done

exec "$@"
