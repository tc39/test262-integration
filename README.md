# test262-integration

## ECMAScript Integration Tests Suite

This repository contains integration tests for [the current draft](https://tc39.github.io/ecma262/) of [ECMA-262](https://github.com/tc39/ecma262),
the ECMAScript® Language Specification.


## Harness

To run tests from this repository using test262-harness, harness helper files must be sync'ed from Test262: 

```
./scripts/sync-harness.sh
```

or 

```
npm run sync-harness
```


## Interpreting

The verion number in [package.json](https://github.com/tc39/test262-integration/blob/master/package.json) cooresponds to Test262's version number, which indicates the expected [INTERPRETING.md](https://github.com/tc39/test262/blob/master/INTERPRETING.md) semantics.
