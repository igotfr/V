fn bubble_sort_mutation<T>(mut array_to_sort []T) {
  //mut aux := 0

  for i in 0..array_to_sort.len {
    for j in i + 1..array_to_sort.len {
      if array_to_sort[i] > array_to_sort[j] {
				array_to_sort[i], array_to_sort[j] = array_to_sort[j], array_to_sort[i]
        /*aux = pVetor[i]
        pVetor[i] = pVetor[j]
        pVetor[j] = aux*/
      }
    }
  }
}

fn bubble_sort<T>(array_to_sort []T) []T {
  mut array_to_sort_clone := array_to_sort.clone()
  //mut aux := 0

  for i in 0..array_to_sort_clone.len {
    for j in i + 1..array_to_sort_clone.len {
      if array_to_sort_clone[i] > array_to_sort_clone[j] {
				array_to_sort_clone[i], array_to_sort_clone[j] = array_to_sort_clone[j], array_to_sort_clone[i]
        /*aux = pVetor[i]
        pVetor[i] = pVetor[j]
        pVetor[j] = aux*/
      }
    }
  }

  return array_to_sort_clone
}
