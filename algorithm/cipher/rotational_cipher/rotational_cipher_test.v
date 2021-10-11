module rotational_cipher

fn test_rotate_a_by_1() {
  assert rotate('a', 1) == 'b'
}

fn test_rotate_a_by_26_same_output_as_input() {
  assert rotate('a', 26) == 'a'
}

fn test_rotate_a_by_0_same_output_as_input() {
  assert rotate('a', 0) == 'a'
}

fn test_rotate_m_by_13() {
  assert rotate('m', 13) == 'z'
}

fn test_rotate_n_by_13_with_wrap_around_alphabet() {
  assert rotate('n', 13) == 'a'
}

fn test_rotate_capital_letters() {
  assert rotate('OMG', 5) == 'TRL'
}

fn test_rotate_spaces() {
  assert rotate('O M G', 5) == 'T R L'
}

fn test_rotate_numbers() {
  assert rotate('Testing 1 2 3 testing', 4) == 'Xiwxmrk 1 2 3 xiwxmrk'
}

fn test_rotate_punctuation() {
  assert rotate('Let\'s eat, Grandma!', 21) == 'Gzo\'n zvo, Bmviyhv!'
}

fn test_rotate_all_letters() {
  assert rotate('The quick brown fox jumps over the lazy dog.', 13) == 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
}