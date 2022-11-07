## Setup

```
softwareupdate --install-rosetta
arch -x86_64 uname -m
docker build -t compilerbook https://www.sigbus.info/compilerbook/Dockerfile --platform linux/amd64
docker run --rm -v $PWD:/chibicc -w /chibicc compilerbook make clean
```

## Test

```
docker run --rm -v $PWD:/chibicc -w /chibicc compilerbook make test
```

Interactive

```
docker run --rm -it -v $PWD:/chibicc -w /chibicc compilerbook
```
