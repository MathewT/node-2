# node-2

## Build

```bash
docker build -t mthomas/node-2 .
```

## Run

```bash
docker run -p 3000:3000 -p 3001:3001 -v "$(pwd)"/src:/usr/src/app/src  mthomas/node-2
```