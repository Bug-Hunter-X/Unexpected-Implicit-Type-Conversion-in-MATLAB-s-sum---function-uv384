# MATLAB Implicit Type Conversion Bug

This repository demonstrates an uncommon bug in MATLAB related to implicit type conversion during array summation using the `sum()` function.  The issue occurs when a logical array is passed to `sum()`.  MATLAB might implicitly convert the logical array to a double array, leading to unintended results. 

The `bug.m` file contains a function that highlights this behavior. The `bugSolution.m` file provides a corrected version that explicitly handles logical arrays.

## How to Reproduce
1. Clone this repository.
2. Open MATLAB.
3. Run `bug.m` with a logical array input such as `[true, false, true]`. You'll observe unexpected numeric output instead of the expected logical count of true values.
4. Run `bugSolution.m` which provides a corrected summation.
