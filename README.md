# VHDL Counter Overflow Bug

This repository demonstrates a potential overflow bug in a simple VHDL counter. The counter uses the INTEGER type, which can lead to unexpected behavior when the maximum value is exceeded.

## Bug Description

The provided VHDL code implements a simple 4-bit counter. However, it uses the INTEGER type, which has a range that may extend beyond the intended range (0 to 15) in some VHDL implementations. This can lead to unexpected behavior when the counter reaches its maximum value (15) and then increments, potentially resulting in unexpected wrap-around values instead of remaining at the maximum count.

## Solution

The solution provided replaces the INTEGER type with an unsigned type, explicitly limiting the counter's range to 0 to 15, thus preventing overflow issues and ensuring the counter correctly saturates at 15.
