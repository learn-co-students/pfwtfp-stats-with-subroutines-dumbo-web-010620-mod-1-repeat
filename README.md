# Title

## Learning Goals

- Identify techniques for breaking down large problems: hide work in subroutines
- Identify techniques for breaking down large problems: DRY, prefer subroutines

## Working with Subroutines

As an exercise in designing software that's kept neat and readable by
subroutines, we're going to create a basic statistics calculator. While it
might seem a bit dry, this is the heart of the burgeoning field of data
science. Also it turns out that some of the statistical definitions depend on
_other_ definitions: perfect opportunities for us to DRY out code _and_ hide
complexity.

This lab has been given a number of tests that will ensure you implement a
basic statistics calculator. You'll need to define the following methods

* `mean`
  * **Input**: A set of numbers
  * **Output**: The sum of the elements divided by the count
    of elements 
* `median`
  * **Input**: A set of numbers
  * **Output**: The middle-most number. Sort the set and find the number in the
    middle. If the set count is even, it is the average of the two numbers in
    the middle
* `mode`
  * **Input**: A set of numbers
  * **Output**: The number that occurs the most
* `standard_deviation`
  * **Input**: A set of numbers
  * **Output**: The result of:
    * Calculating the input's mean
    * For each number in the set, subtract the mean from that number and square
      it. Hang onto that result of squared differences
    * Calculate the mean on the set of the squared differences
    * Take the square root of that new mean

## Special Rules

1. Do not use any built-in methods Ruby provides for doing statistical
   calculation
2. Do not use any programming community resources e.g. Stack Overflow to solve
   this. You should code this by hand, using the Flatiron Process and _the code
   skills you already know_. If you can loop, assign variables, and do math
   functions, you can solve this!

## Conclusion

If you've done this correctly, you should be able to see how DRY and clear your
code calculation can be. You probably also had a chance to stretch your
looping, iteration and enumeration skills too!

The important thing to keep in mind is that this breakdown of complexity into
collaborating subroutines should be one of your go-to techniques as you wade
out from simple programs to more complex ones.

## Resources

- [Statistical Definitions][statdef]

[statdef]: http://tutorials.istudy.psu.edu/basicstatistics/basicstatistics2.html
