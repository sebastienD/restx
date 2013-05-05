#! /usr/bin/env sh

echo "upgrading RESTX...."

PRG="$0"
while [ -h "$PRG" ] ; do
  PRG=`readlink "$PRG"`
done

dir=`dirname $PRG`

rm -rf "$dir/lib"
tar xzvf "$dir/upgrade.tgz" -C "$dir"

rm -f "$dir/upgrade.tgz"
