#!/bin/bash

SCC=$(/scc $@)
echo "scc=$SCC" >> $GITHUB_OUTPUT
