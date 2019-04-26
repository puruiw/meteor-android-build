#/bin/bash
# Usage:
#   ./build-app.sh <app_dir> <server_address>
docker build . -t meteor-android-builder:latest
docker docker run --rm -it -e APP_SERVER=$2 -v $1:/app -v $(pwd):/build meteor-android-builder:latest
