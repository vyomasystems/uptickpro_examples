

# Build and Run tests on C-Class

## Build C-Class

- `make` command will take quite few mintes to complete.

```
$ git clone https://gitlab.com/shaktiproject/cores/c-class.git
$ cd c-class/
$ pip install -r requirements.txt
$ repomanager --yaml $PWD/test_soc/deps.yaml --verbose debug --clean
$ repomanager --yaml $PWD/test_soc/deps.yaml --verbose debug -cup
$ soc_config -ispec sample_config/c64/rv64i_isa.yaml   -customspec sample_config/c64/rv64i_custom.yaml   -cspec sample_config/c64/core64.yaml   -gspec sample_config/c64/csr_grouping64.yaml   -dspec sample_config/c64/rv64i_debug.yaml   --verbose debug
$ export XXD_VERSION=2023
$ make  generate_verilog
$ make link_verilator
$ make generate_boot_files
```

- After the build is completed, the executable binaries can be found at `./c-class/bin` and the verilog files will be at `/home/vsysuser/workspace/c-class/build/hw/verilog` .
- Export the design build
```
export DESIGN_HOME=/home/vsysuser/workspace/uptickpro_examples/shakti_cclass/c-class/bin
```

## To run tests on C-CLASS

```
cd  ./../riscv_assembly
export DESIGN_HOME=/home/vsysuser/workspace/uptickpro_examples/shakti_cclass/c-class/bin
make run_dut TEST=<path/to/test>
```

- example `make run_dut TEST=tests/branch.S`
