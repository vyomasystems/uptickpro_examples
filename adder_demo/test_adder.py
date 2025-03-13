# See LICENSE.cocotb for details
# See LICENSE.vyoma for details

# SPDX-License-Identifier: CC0-1.0
# Simple tests for an adder module
import cocotb
from cocotb.triggers import Timer
import random
import vsc
from cocotb_coverage.coverage import *

def adder_model(a: int, b: int) -> int:
    """ model of adder """
    return a + b

@vsc.covergroup
class adder_covergroup(object):
    def __init__(self):
        self.with_sample(
            value_of_A=vsc.bit_t(4),
            value_of_B=vsc.bit_t(4),
        )
        self.VAL_A = vsc.coverpoint(self.value_of_A, cp_t=vsc.uint8_t())
        self.VAL_B = vsc.coverpoint(self.value_of_B, cp_t=vsc.uint8_t())
        self.cross_ab = vsc.cross([self.VAL_A, self.VAL_B])
cov=adder_covergroup()


@cocotb.test()
async def adder_basic_test(dut):
    """Test for 5 + 10"""
    
    A = 5
    B = 10

    dut.a.value = A
    dut.b.value = B

    await Timer(2, units='ns')

    assert dut.sum.value == adder_model(A, B), f"Adder result is incorrect: {dut.X.value} != 15"
    cov.sample(A,B)

@cocotb.test()
async def adder_randomised_test(dut):
    """Test for adding 2 random numbers multiple times"""

    for i in range(10):

        A = random.randint(0, 15)
        B = random.randint(0, 15)

        dut.a.value = A
        dut.b.value = B

        await Timer(2, units='ns')
        
        dut._log.info(f'A={A:05} B={B:05} model={adder_model(A,B):05} DUT={int(dut.sum.value):05}')
        assert dut.sum.value == adder_model(A, B), "Randomised test failed with: {A} + {B} = {sum}".format(
            A=dut.a.value, B=dut.b.value, SUN=dut.sum.value)
        cov.sample(A,B)
    vsc.write_coverage_db("adder_cov.xml")

