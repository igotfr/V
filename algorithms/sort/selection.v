fn selection_sort_mutation<T>(mut array_to_sort []T) {
  array_to_sort_len := array_to_sort.len

  for i in 0..array_to_sort_len {
    // index of lowest
    mut ilo := i

    for j in i + 1..array_to_sort_len {
      if array_to_sort[ilo] > array_to_sort[j] {
        ilo = j
      }
    }

    //if i != loi {
      array_to_sort[i], array_to_sort[ilo] = array_to_sort[ilo], array_to_sort[i]
      /*tmp := array_to_sort[i]
      array_to_sort[i] = array_to_sort[ilo]
      array_to_sort[ilo] = tmp*/
    //}
  }
}

fn selection_sort<T>(array_to_sort []T) []T {
  mut array_to_sort_clone := array_to_sort.clone()
  array_to_sort_clone_len := array_to_sort_clone.len

  for i in 0..array_to_sort_clone_len {
    // index of lowest
    mut ilo := i

    for j in i + 1..array_to_sort_clone_len {
      if array_to_sort_clone[ilo] > array_to_sort_clone[j] {
        ilo = j
      }
    }

    //if i != loi {
      array_to_sort_clone[i], array_to_sort_clone[ilo] = array_to_sort_clone[ilo], array_to_sort_clone[i]
      /*tmp := array_to_sort_clone[i]
      array_to_sort_clone[i] = array_to_sort_clone[ilo]
      array_to_sort_clone[ilo] = tmp*/
    //}
  }

  return array_to_sort_clone
}
