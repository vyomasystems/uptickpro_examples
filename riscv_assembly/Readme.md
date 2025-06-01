# Run tests

## To compile tests

- To compile and run tests on spike
```
make run TEST=<path/to/test>
```

- To run test only on spike
```
make spike TEST=<path/to/test>
```

- To generate disassembly file
```
make disasm TEST=<path/to/test>
```


## To clean work dir:
```
make clean TEST=<testname>
```
- example `make clean TEST=branch`


