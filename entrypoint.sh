#!/bin/bash

SCC=$(/scc $@)

delimiter="$(openssl rand -hex 8)"
echo "scc<<${delimiter}" >> "${GITHUB_OUTPUT}"
echo "${SCC}" >> "${GITHUB_OUTPUT}"
echo "${delimiter}" >> "${GITHUB_OUTPUT}"
