#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./9cc "$input" >tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42
assert 41 " 12 + 34 - 5 "
assert 17 "-12 + 34 - 5 "
assert 4 "2*2"
assert 2 "(1+1)"
assert 4 "(1+1)*2"
assert 3 "1+1*2"

echo OK
