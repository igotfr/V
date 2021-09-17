// Loop

fn bubble_sort_loop<T>(mut array_to_sort []T, compare fn (a T, b T) bool) {
  array_to_sort_len := array_to_sort.len

  for i in 0..array_to_sort_len {
    for j in i + 1..array_to_sort_len {
      if compare(array_to_sort[i], array_to_sort[j]) {
        array_to_sort[i], array_to_sort[j] = array_to_sort[j], array_to_sort[i]
        /*tmp := array_to_sort[i]
        array_to_sort[i] = array_to_sort[j]
        array_to_sort[j] = tmp*/
      }
    }
  }
}

fn bubble_sort_loop_nonmutation<T>(array_to_sort []T, compare fn (a T, b T) bool) []T {
  mut array_to_sort_clone := array_to_sort.clone()

  bubble_sort_loop<T>(mut array_to_sort_clone, compare)
  //return function_nonmutation<T>(bubble_sort_loop, array_to_sort, compare)

  return array_to_sort_clone
}

// Recursion

fn bubble_sort_recursion<T>(mut array_to_sort []T, compare fn (a T, b T) bool) {
  array_to_sort_len := array_to_sort.len

  if array_to_sort_len <= 1 { return }

  for i in 0..array_to_sort_len - 1 {
    if compare(array_to_sort[i], array_to_sort[i + 1]) {
      array_to_sort[i], array_to_sort[i + 1] = array_to_sort[i + 1], array_to_sort[i]
      /*tmp := array_to_sort[i]
      array_to_sort[i] = array_to_sort[j]
      array_to_sort[j] = tmp*/
    }
  }

  bubble_sort_recursion<T>(mut array_to_sort[0..array_to_sort_len - 1], compare)
}

fn bubble_sort_recursion_nonmutation<T>(array_to_sort []T, compare fn (a T, b T) bool) []T {
  mut array_to_sort_clone := array_to_sort.clone()

  bubble_sort_recursion<T>(mut array_to_sort_clone, compare)

  return array_to_sort_clone
}

// Bubble Sort

enum LoopRec {
  loop
  recursion
}

fn bubble_sort<T>(mut array_to_sort []T, compare fn (a T, b T) bool, loop_rec LoopRec) {
  match loop_rec {
    .loop { bubble_sort_loop<T>(mut array_to_sort, compare) }
    .recursion { bubble_sort_recursion<T>(mut array_to_sort, compare) }
  }
}

fn bubble_sort_nonmutation<T>(array_to_sort []T, compare fn (a T, b T) bool, loop_rec LoopRec) []T {
  return match loop_rec {
    .loop { bubble_sort_loop_nonmutation<T>(array_to_sort, compare) }
    .recursion { bubble_sort_recursion_nonmutation<T>(array_to_sort, compare) }
  }
}
