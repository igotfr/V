## Modifications
- division by 0 in floats and operations with infinity according IEEE 754

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
- [test] attribute https://github.com/vlang/v/issues/11410
  ```v
  [test]
  fn f() {
    assert 2 == 2
  }
  ```
- bitwise and logical operators matching

  Operator | Description | Type
  :------: | :---------: | :--:
  `#` | bitwise NOT | integers
  & | bitwise AND | integers
  \| | bitwise OR | integers
  ~ | bitwise XOR | integers

  Operator | Description | Type
  :------: | :---------: | :--:
  ! | logical NOT | bools
  && | logical AND | bools
  \|\| | logical OR | bools
  ~= | logical XOR | bools

## Lack
- optional typing on variable declaration https://github.com/vlang/v/issues/11408 closed

- static fields and methods (class variables and methods)
  ```v
  struct Point {
    x int
    y int

  static:
    amount u32
  }

  fn (static p Point) vertical(x_ int) Point {
    return Point {
      x: x_
      y: 0
    }
  }

  p1 := Point{4, 5}
  p2 := Point.vertival(7)
  _ = Point.amount
  ```
- Wrapping Arithmetic Operators: +% or `+~`, *% or `+~`, /% or `/~` (I prefer `+~`) https://github.com/vlang/v/issues/11344
https://ziglang.org/documentation/0.8.0/#toc-Table-of-Operators

- null (or none) and anonymous sumtypes: (u8 | null) https://github.com/vlang/v/issues/11230
https://ziglang.org/documentation/0.8.0/#Optionals
  ```v
  n := (int | null)(45)
  s := (string | null)(null)
  ```
- <s>binary format specifier ```${10:b} // 1010``` https://github.com/vlang/v/issues/11409</s>

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
- inline block => https://github.com/vlang/v/issues/11345 closed
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

- <s>cond</s> https://github.com/vlang/v/issues/11346 <s>
  ```v
  cond {
    false { println('if') }
    true { println('else if') }
    else { println('else') }
  }

  // with inline operator
  cond =>
    false => println('if')
    true => println('else if')
    else => println('else')
  ```
</s>

- for-else
