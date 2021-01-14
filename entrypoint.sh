#!/bin/sh

echo "::set-output name=scc::""$(/scc "$@" | sed 's/%/%25/g ; :a;N;$!ba;s/\n/%0A/g ; s/\r/%0D/g')"
