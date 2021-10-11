module rna_transcription
 
fn test_transcribes_guanine_to_cytosine() {
  assert to_rna('G') or { 'Invalid DNA: ' + err.msg } == 'C'
}

fn test_transcribes_cytosine_to_guanine() {
  assert to_rna('C') or { 'Invalid DNA: ' + err.msg } == 'G'
}

fn test_transcribes_thymidine_to_adenine() {
  assert to_rna('T') or { 'Invalid DNA: ' + err.msg } == 'A'
}

fn test_transcribes_adenine_to_uracil() {
  assert to_rna('A') or { 'Invalid DNA: ' + err.msg } == 'U'
}

fn test_it_transcribes_all_dna_nucleotides_to_rna_equivalents() {
  assert to_rna('ACGTGGTCTTAA') or { 'Invalid DNA: ' + err.msg } == 'UGCACCAGAAUU'
}

fn test_it_transcribes_all_dna_nucleotides_to_rna_equivalents_including_invalid_dna_nucleotides() {
  assert to_rna('PCJTGGTCTTAA') or { 'Invalid DNA: ' + err.msg } == 'Invalid DNA: ?G?ACCAGAAUU'
}
