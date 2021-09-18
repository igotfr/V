// Loop

fn selection_sort_loop<T>(mut array_to_sort []T, compare fn (a T, b T) bool) {
  array_to_sort_len := array_to_sort.len

  for i in 0..array_to_sort_len {
    // index of lowest
    mut ilo := i

    for j in i + 1..array_to_sort_len {
      if compare(array_to_sort[ilo], array_to_sort[j]) {
        ilo = j
      }
    }

    //if i != ilo {
      array_to_sort[i], array_to_sort[ilo] = array_to_sort[ilo], array_to_sort[i]
      /*tmp := array_to_sort[i]
      array_to_sort[i] = array_to_sort[ilo]
      array_to_sort[ilo] = tmp*/
    //}
  }
}


fn selection_sort_loop_clone<T>(array_to_sort []T, compare fn (a T, b T) bool) []T {
  mut array_to_sort_clone := array_to_sort.clone()

  selection_sort_loop<T>(mut array_to_sort_clone, compare)

  return array_to_sort_clone
}

// Recursion

fn selection_sort_recursion<T>(mut array_to_sort []T, compare fn (a T, b T) bool) {
  array_to_sort_len := array_to_sort.len

  //if array_to_sort_len <= 1 { return }

  // index of lowest
  i := 0
  mut ilo := i

  for j in i + 1..array_to_sort_len {
    if compare(array_to_sort[ilo], array_to_sort[j]) {
      ilo = j
    }
  }

  //if i != ilo {
    array_to_sort[i], array_to_sort[ilo] = array_to_sort[ilo], array_to_sort[i]
    /*tmp := array_to_sort[i]
    array_to_sort[i] = array_to_sort[ilo]
    array_to_sort[ilo] = tmp*/
  //}

  if i + 1 < array_to_sort_len {
    selection_sort_recursion<T>(mut array_to_sort[i + 1..], compare)
  }
}

fn selection_sort_recursion_clone<T>(array_to_sort []T, compare fn (a T, b T) bool) []T {
  mut array_to_sort_clone := array_to_sort.clone()

  selection_sort_recursion<T>(mut array_to_sort_clone, compare)

  return array_to_sort_clone
}

// Selection Sort

enum LoopRec {
  loop
  recursion
}

fn selection_sort<T>(mut array_to_sort []T, compare fn (a T, b T) bool, loop_rec LoopRec) {
  match loop_rec {
    .loop { selection_sort_loop<T>(mut array_to_sort, compare) }
    .recursion { selection_sort_recursion<T>(mut array_to_sort, compare) }
  }
}

fn selection_sort_clone<T>(array_to_sort []T, compare fn (a T, b T) bool, loop_rec LoopRec) []T {
  return match loop_rec {
    .loop { selection_sort_loop_clone<T>(array_to_sort, compare) }
    .recursion { selection_sort_recursion_clone<T>(array_to_sort, compare) }
  }
}
