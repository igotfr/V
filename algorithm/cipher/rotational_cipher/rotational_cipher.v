module rotational_cipher

import strings { new_builder }

fn rotate(text string, shift int) string {
  mut ciphered_text := new_builder(1)

  for char in text {
    ciphered_text.write_b(match char {
      `a`...`z` { `a` + (char - `a` + shift) % 26 }
      `A`...`Z` { `A` + (char - `A` + shift) % 26 }
      else { char }
    })
  }

  return ciphered_text.str()
}