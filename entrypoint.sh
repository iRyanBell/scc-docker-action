#!/bin/bash

SCC=$(/scc $@)

SCC="${SCC//'%'/'%25'}"
SCC="${SCC//$'\n'/'%0A'}"
SCC="${SCC//$'\r'/'%0D'}"

echo "::set-output name=scc::$SCC"