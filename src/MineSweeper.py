from polyphony import testbench, module, is_worker_running
from polyphony.timing import clksleep, wait_value, clkfence
from polyphony.io import Port
from polyphony.typing import bit, bit3, bit4, bit5, bit6, bit7, bit8, bit16, bit32, List, int8, int16
from data import FONT_DATA

@module
class LEDMatrixAB:

    def __init__(self, interval):
        
        self.swA = Port(bool, 'in')
        self.swB = Port(bool, 'in')
        self.rotary_a = Port(bool, 'in')
        self.rotary_b = Port(bool, 'in')
        self.rotary_SW = Port(bool, 'in')
        self.rotary2_a = Port(bool, 'in')
        self.rotary2_b = Port(bool, 'in')
        self.rotary2_SW = Port(bool, 'in')

        self.col = Port(bit8, 'out')
        self.row = Port(bit8, 'out')
        self.boardLED1 = Port(bit, 'out')    #onboard LED on TangNano9K
        self.boardLED2 = Port(bit, 'out')
        self.quaterSecondCLK = Port(bool, 'in')

        self.interval = interval
        self.append_worker(self.main)


    def main(self):
        time:bit32 = 72000                   #current time(unit:second)

        frameBuffer:List[bit8]=[33,33,33,33,33,33,33,33,
                                33, 6,33,33,33, 2, 2, 2,
                                33,33, 0, 0, 0, 4, 4, 4,
                                33,33,33, 2, 2, 6, 6, 6,
                                33,33,33, 4,33, 8, 8, 8,
                                33,33,33, 6,33,33,33,33,
                                33,33,33, 6,33,33,33,33,
                                33,33,33,33,33,33,33,33]
                               

        oldRE_a:bit = 0    # keep RotaryEnchoder_a value
        oldRE2_a:bit = 0   # keep RotaryEnchoder2_a value
        xvalue:bit3 = 0    # current x direction value(row) of cursol
        yvalue:bit3 = 0    # current y direction value(culomn) of cursol
        old_xvalue:bit3 = 0
        old_yvalue:bit3 = 0
        untiChatter1:bit8 =0
        untiChatter2:bit8 =0
        loopCounter:bit3 = 0  # for showing 8 lines
        antiChatter_RESW1:bit8 = 0

        antiChatter_RESET:bit5 = 0

        while is_worker_running():
            if(self.swA.rd() == 0):
                antiChatter_RESET += 1
                if(antiChatter_RESET > 10):
                    frameBuffer[63] = 0
                    antiChatter_RESET = 11
                    continue
            else:
                antiChatter_RESET = 0

            # Handling RotaryEnchoder
            if(oldRE_a != self.rotary_a.rd()):
                untiChatter1 += 1
                if(untiChatter1 > 10):
                    if(oldRE_a):
                        oldRE_a = self.rotary_a.rd()
                        untiChatter1 = 0
                    else:
                        if(self.rotary_b.rd()):
                            xvalue -= 1
                        else:
                            xvalue += 1
                    oldRE_a = self.rotary_a.rd()
                    untiChatter1 = 0
            else:
                untiChatter1 = 0
                oldRE_a = self.rotary_a.rd()
                
            if(oldRE2_a != self.rotary2_a.rd()):
                untiChatter2 += 1
                if(untiChatter2 > 10):
                    if(oldRE2_a):
                        oldRE2_a = self.rotary2_a.rd()
                        untiChatter2 = 0
                    else:
                        if(self.rotary2_b.rd()):
                            yvalue += 1
                        else:
                            yvalue -= 1
                    oldRE2_a = self.rotary2_a.rd()
                    untiChatter2 = 0
            else:
                untiChatter2 = 0
                oldRE2_a = self.rotary2_a.rd()
# handling RotaryEnchoder1 SW
            if(self.rotary_SW.rd() == 0):
                antiChatter_RESW1 += 1
                if(antiChatter_RESW1 > 10):
                    self.boardLED2(1)
                    antiChatter_RESW1 = 11
            else:
                antiChatter_RESW1 = 0
                self.boardLED2(0)


# update frameBuffer
            prev_Cursor:bit6 = old_xvalue * 8 + old_yvalue
            if(frameBuffer[prev_Cursor] &  0b0000001):
                frameBuffer[prev_Cursor] |= 0b100000
            else:
                frameBuffer[prev_Cursor] &= 0b011111
            
            cursor:bit6 = xvalue * 8 + yvalue
            if(self.quaterSecondCLK.rd()):
                frameBuffer[cursor] &= 0b011111
            else:
                frameBuffer[cursor] |= 0b100000

            old_xvalue = xvalue
            old_yvalue = yvalue

            self.boardLED1(self.quaterSecondCLK.rd())    # 1second blinker

#MatrixLED Driver
            for lightLevel in [0,1,2,3,4,4,5,5,6,6,7,7,8,15]:
                currentLine = 0
                self.row.wr(1 << loopCounter)
                for j in range(8):
                    if(((frameBuffer[loopCounter*8 + j])>>1) > lightLevel):
                        currentLine |= 0b10000000 >> j
                self.col.wr(currentLine)
                self._wait()
            loopCounter += 1


    def _wait(self):
        for i in range(self.interval // 2):
            pass         



m = LEDMatrixAB(600)    #2700

@testbench
def test(matrix_m):
    pass

test(m)
