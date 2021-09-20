## Lack
- binary format specifier ```${10:b} // 1010``` https://github.com/vlang/v/issues/11409

### Blocks
- cond https://github.com/vlang/v/issues/11346
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
