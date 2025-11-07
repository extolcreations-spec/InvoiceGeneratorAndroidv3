#!/usr/bin/env sh
DIR="$(cd "$(dirname "$0")" && pwd)"
if [ -f "$DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
  exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
else
  echo "Gradle wrapper jar missing; attempting system gradle..."
  exec gradle "$@"
fi
