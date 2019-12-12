#!/bin/sh

VERSION=$(cat config | grep '^VERSION=' | cut -d'=' -f2 | cut -d'.' -f1-2)
CODENAME=$(cat config | grep '^CODENAME=' | cut -d'=' -f2)
codename=$(echo "$CODENAME" | tr ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz)

cat etc/os-release | \
    sed "s/##VERSION##/$VERSION/g" |   \
    sed "s/##CODENAME##/$CODENAME/g" | \
    sed "s/##codename##/$codename/g"
