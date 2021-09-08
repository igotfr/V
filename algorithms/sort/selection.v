fn selection_sort_mutation<T>(mut array_to_sort []T) {
  //mut tmp := 0

  for i in 0..array_to_sort.len {
    mut loi := i

    for j in i + 1..array_to_sort.len {
      if array_to_sort[loi] > array_to_sort[j] {
        loi = j
      }
    }

    //if i != loi {
      array_to_sort[i], array_to_sort[loi] = array_to_sort[loi], array_to_sort[i]
      /*tmp = array_to_sort[i]
      array_to_sort[i] = array_to_sort[j]
      array_to_sort[j] = tmp*/
    //}
  }
}

fn selection_sort<T>(array_to_sort []T) []T {
  mut array_to_sort_clone := array_to_sort.clone()
  //mut tmp := 0

  for i in 0..array_to_sort_clone.len {
    mut loi := i

    for j in i + 1..array_to_sort_clone.len {
      if array_to_sort_clone[loi] > array_to_sort_clone[j] {
        loi = j
      }
    }

    //if i != loi {
      array_to_sort_clone[i], array_to_sort_clone[loi] = array_to_sort_clone[loi], array_to_sort_clone[i]
      /*tmp = array_to_sort[i]
      array_to_sort[i] = array_to_sort[j]
      array_to_sort[j] = tmp*/
    //}
  }

  return array_to_sort_clone
}
