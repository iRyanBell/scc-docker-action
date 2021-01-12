# SCC Docker Action

This action counts the lines of code and performs complexity analysis using scc. (https://github.com/boyter/scc)

## Inputs

### `args`

## Outputs

### `scc`

The lines of ccode.

## Example usage

_.github/workflows/main.yml_

```
on: [push]

jobs:
  scc_job:
    runs-on: ubuntu-latest
    name: A job to count the lines of code.
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Get the lines of code.
        id: scc
        uses: iryanbell/scc-docker-action@v1.0.2
        with:
          args: ${{ env.workspace }} -i js,go,html,css
```
