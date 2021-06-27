## Modifications
- division by 0 in floats according IEEE 754

operation | Math
--------- | ----
x / 0 | ∞

### Arithmetic operations between real numbers and infinity

operation | Math
--------- | ----
x + ∞ | ∞
x - ∞ | -∞
x / ∞ | 0
x / -∞ | 0
x > 0 => x * ∞ | ∞
x > 0 => x * -∞ | -∞
x < 0 => x * ∞ | -∞
x < 0 => x * -∞ | ∞

### Arithmetic operations between infinities

operation | Math
--------- | ----
∞ + ∞ | ∞
-∞ - ∞ | -∞
∞ * ∞ | ∞
-∞ * -∞ | ∞

### Undefineds
0 * ∞

0 * -∞

∞ - ∞

±∞ / ±∞

- generics: `<T>` or [T] (I prefer [T] if possible)
- [test]
  ```v
  [test]
  fn f() {
    assert 2 == 2
  }
  ```
- bitwise and logical operators for match
#    bitwise NOT            integers
&    bitwise AND            integers
|    bitwise OR             integers
~    bitwise XOR            integers

!    logical NOT            bools
&&   logical AND            bools
||   logical OR             bools
~=   logical XOR            bools

## Lack
- constructors and destructors for structs
  ```v
  struct Point {
    x int
    y int

    new create(x int, y int) {
      this.x = x
      this.y = y
    }
    
    // syntax sugar, shorthand
    new create(this.x, this.y)
  
    new vertical(x int) {
      this.x = x
      this.y = 0
    }
  }
  ```
- Wrapping Arithmetic Operators: +% or `+~`, *% or `+~`, /% or `/~` https://ziglang.org/documentation/0.8.0/#toc-Table-of-Operators
- null union @int or #int or null | u8 <- (I prefer this) https://ziglang.org/documentation/0.8.0/#Optionals
- binary format specifier ${10:b} // 1010

### Functions
- pipe operator: |> https://elixirschool.com/en/lessons/basics/pipe-operator/
- chaining operator: .> https://tutorial.ponylang.io/expressions/methods.html#chaining
- shorthand for anonymous functions: it.
  ```v
  sum := fn (a int, b int) int { return a + b }
  // with shorthand
  sum := fn int { return int(it.1) + int(it.2) }
  // with shorthand and inline block =>
  sum := fn int => int(it.1) + int(it.2)
  ```

### Array
- reverse indexing for array
  ```v
  arr := [1, 2, 3, 4, 5]
  arr[-1] // 5
  // or
  arr[@0] // 5
  ```
- Overloadable array indexing [0, 1]
- range operator : https://erik-engheim.medium.com/ranges-and-slices-in-julia-and-python-bb0fd893a20c
- array generator

### Blocks
- inline block =>
  ```v
  for nucleotide in dna =>
    match nucleotide =>
      `A` => rna.write_b(`U`)
      `T` => rna.write_b(`A`)
      `C` => rna.write_b(`G`)
      `G` => rna.write_b(`C`)
      else => rna.write_b(`?`)
  ```
- built-in shell
  ```v
  output := shell {
    cat sample.txt | head -7 | tail -5
  }
  ```
- cond
  ```v
  cond {
    false { println('if') }
    true { println('else if') }
    else { println('else') }
  }
	
  // with inline operator
  ```v
  cond =>
    false => println('if')
    true => println('else if')
    else => println('else')
  ```
- for-else
