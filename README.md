# Haskell: Runtime Error in Pattern Matching with Maybe Type

This repository demonstrates a common Haskell error related to pattern matching and the Maybe type.  The `bug.hs` file contains code that attempts to read a string from a Maybe value without proper error handling, resulting in a runtime exception if the string is invalid. The `bugSolution.hs` demonstrates a robust solution.

## Description
The code attempts to process a Maybe String, using `read` to convert it to an Int.  The problem arises when the Maybe value is Just but contains non-numeric characters which `read` cannot interpret.  This leads to a runtime error. 

## Solution
The solution file, `bugSolution.hs`, provides a safer approach, utilizing `reads` for error handling and avoiding the exceptions.