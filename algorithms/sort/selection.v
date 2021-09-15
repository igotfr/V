fn selection_sort_mutation<T>(mut array_to_sort []T) {
  for i in 0..array_to_sort.len {
    // index of lowest
    mut ilo := i

    for j in i + 1..array_to_sort.len {
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

  for i in 0..array_to_sort_clone.len {
    // index of lowest
    mut ilo := i

    for j in i + 1..array_to_sort_clone.len {
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
