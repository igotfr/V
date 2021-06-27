## Modifications
- division by 0 in floats according IEEE 754
- generics: <T> or [T] (I prefer [T] if possible)
- [test]

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
    
    // syntax sugar
    new create(this.x, this.y)
  
    new vertical(x int) {
      this.x = x
      this.y = 0
    }
  }
  ```
- Wrapping Arithmetic Operators: +% or `+~`, *% or `+~`, /% or `/~` https://ziglang.org/documentation/0.8.0/#toc-Table-of-Operators

### Functions
- => $
  ```v
  ```
- pipe operator: |> https://elixirschool.com/en/lessons/basics/pipe-operator/
- chaining operator: .> https://tutorial.ponylang.io/expressions/methods.html#chaining

- reverse indexing for array
- Overloadable array indexing [0, 1]
- range operator : https://erik-engheim.medium.com/ranges-and-slices-in-julia-and-python-bb0fd893a20c
- array generator

- binary format specifier ${10:b} // 1010
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
  ```
- for-else
- null union @int or #int  https://ziglang.org/documentation/0.8.0/#Optionals
