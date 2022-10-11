## Setup

```
docker build -t compilerbook https://www.sigbus.info/compilerbook/Dockerfile
```

## Run

```
docker run --rm compilerbook ls /
```

## Test

```
docker run --rm -v $PWD/9cc:/9cc -w /9cc compilerbook make test
```

Interactive

```
docker run --rm -it -v $PWD/9cc:/9cc -w /9cc compilerbook
```
