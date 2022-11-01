# SCC Docker Action

This action counts the lines of code and performs complexity analysis using scc. (https://github.com/boyter/scc)

## Inputs

### `args`

## Outputs

### `scc`

The lines of ccode.

## Example usage

_.github/workflows/main.yml_

```yaml
on: [push]

jobs:
  scc_job:
    runs-on: ubuntu-latest
    name: A job to count the lines of code.
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Get the lines of code.
        id: scc
        uses: Adapt-API/scc-docker-action@master
        with:
          args: ${{ env.workspace }} -i js,go,html,css
      - name: Echo scc output
        run: |
          echo
          echo -n "${{ steps.scc.outputs.scc }}"
```
