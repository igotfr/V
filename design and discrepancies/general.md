## Modifications
- division by 0 in floats according IEEE 754
- generics: <T> or [T] (I prefer [T] if possible)
- [test]

## Lack
- constructors for structs
- Wrapping Arithmetic Operators: +% or `+~`, *% or `+~`, /% or `/~` https://ziglang.org/documentation/0.8.0/#toc-Table-of-Operators
- pipe operator: |>
- chaining operator: .> https://tutorial.ponylang.io/expressions/methods.html#chaining
- reverse indexing for array
- range operator : https://erik-engheim.medium.com/ranges-and-slices-in-julia-and-python-bb0fd893a20c
- binary format specifier
- Overloadable array indexing [0, 1]
- array generator
- built-in shell
  ```v
  output := shell {
    cat sample.txt | head -7 | tail -5
  }
  ```
