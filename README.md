# Find duplicates in an array with Lo-Dash

To run, install Node and type in the terminal:

```bash
make install && make build && make start
```

## Solution:

```coffee
findDuplicates = (skus) ->
  return _.chain(skus)
    .groupBy( (sku) ->
      return sku
    )
    .pairs()
    .filter( (item) ->
      return item[1].length > 1
    )
    .map( (item) ->
      return item[0]
    )
    .sortBy( (sku) ->
      return sku
    )
    .value()
```

## File structure

Coffescript sources are in src/ folder, compiled JS files are in lib/

```
.
├── lib/
│   ├── data.js
│   └── find-duplicates.js
├── src/
│   ├── data.coffee
│   └── find-duplicates.coffee
├── output/
│   ├── 1-groupby.json
│   ├── 2-pair.json
│   ├── 3-filter.json
│   └── 4-map.json
├── output.txt
├── ...
└── index.js
```
