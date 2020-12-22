#!/bin/sh

echo "manage openrc"
openrc
touch /run/openrc/softlevel
echo "openrc done"

echo "Starting nginx ..."
service nginx restart
echo "Done."