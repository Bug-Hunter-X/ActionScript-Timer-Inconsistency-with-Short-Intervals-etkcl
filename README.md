# ActionScript Timer Inconsistency with Short Intervals

This repository demonstrates an uncommon bug related to the `Timer` class in ActionScript 3.  When using very short intervals, the timer may exhibit inconsistent behavior, potentially leading to missed timer events or inaccurate timing.

## Bug Description
The provided ActionScript code creates a `Timer` object with a short interval. While it *should* fire timer events consistently, it may not do so reliably, particularly on resource-constrained systems.  The frequency of missed events may increase with shorter intervals.

## Reproduction
1. Compile and run the `bug.as` file.
2. Observe the output.  You may notice that "Timer event fired!" is not printed as frequently as expected given the timer interval.

## Solution
The `bugSolution.as` file offers a potential workaround using `setInterval` and `clearInterval` for more precise control over timing, which offers greater reliability in situations where the standard timer exhibits erratic behavior.