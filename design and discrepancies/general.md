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

- <s>generics: `<T>` or [T] (I prefer [T] if possible)</s>

- [test] attribute `Alternative` https://github.com/vlang/v/issues/11410
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
- optional typing on variable declaration `Alternative` https://github.com/vlang/v/issues/11408 closed
  ```v
  i int := 45


  type Int_string = u8 | string

  mut i_s Int_string := u8(77)
  i_s = 'berg'
  ```

- constructors `Alternative`
  ```v
  struct Point {
    x int
    y int

  static:
    amount u32
  }

  fn Point.vertical(x_ int) Point {
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

  +~ (wraparound addition)
  -~ (wraparound subtraction)
  *~ (wraparound negation)
  /~ (wraparound multiplication)

  ```v
  u8(129) +~ u8(129) // error
  ```

- null (or none) and anonymous sumtypes: (u8 | null) `Alternative` https://github.com/vlang/v/issues/11230
https://ziglang.org/documentation/0.8.0/#Optionals
  ```v
  n := (int | null)(45)
  s := (string | null)(null)
  ```

### Functions
- pipe operator: |> `Alternative` https://elixirschool.com/en/lessons/basics/pipe-operator/
- chaining operator: .> `Alternative` https://tutorial.ponylang.io/expressions/methods.html#chaining
- shorthand for anonymous functions: it. `Alternative`
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
- Overloadable array indexing [0, 1] `Alternative`
- range operator : https://erik-engheim.medium.com/ranges-and-slices-in-julia-and-python-bb0fd893a20c
- array generator

### Blocks
- inline block => `Alternative` https://github.com/vlang/v/issues/11345 closed
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

- for-else
