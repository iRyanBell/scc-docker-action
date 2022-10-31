#!/bin/bash

SCC=$(/scc $@)

delimiter="$(date|md5sum)"
echo "scc<<${delimiter}" >> "${GITHUB_OUTPUT}"
echo "${SCC}" >> "${GITHUB_OUTPUT}"
echo "${delimiter}" >> "${GITHUB_OUTPUT}"
