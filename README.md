# SCC Docker Action

This action counts the lines of code and performs complexity analysis using scc. (https://github.com/boyter/scc)

## Inputs

### `args`

## Outputs

### `scc`

The lines of code.

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
          echo -n "${{ fromJson(steps.scc.outputs.scc)[0].Code }}"
```

## Another example with badge

```yaml
      - name: Get lines of code (more sophisticated)
        id: scc
        uses: iryanbell/scc-docker-action@v1.0.2
        with:
          args: ${{ env.workspace }} -i php --exclude-dir vendor --format json src

      - name: Make lines of code badge
        uses: emibcn/badge-action@v2.0.2
        with:
          label: Lines of Code
          status: ${{ fromJson(steps.scc.outputs.scc)[0].Code }}
          color: 'blue'
          path: .github/lines.svg
```
