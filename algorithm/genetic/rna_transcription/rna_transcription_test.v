module rna_transcription
 
fn test_transcribes_guanine_to_cytosine() {
  assert to_rna('G') or { StringMap({ 'Invalid DNA': err.msg }) } == StringMap('C')
}

fn test_transcribes_cytosine_to_guanine() {
  assert to_rna('C') or { StringMap({ 'Invalid DNA': err.msg }) } == StringMap('G')
}

fn test_transcribes_thymidine_to_adenine() {
  assert to_rna('T') or { StringMap({ 'Invalid DNA': err.msg }) } == StringMap('A')
}

fn test_transcribes_adenine_to_uracil() {
  assert to_rna('A') or { StringMap({ 'Invalid DNA': err.msg }) } == StringMap('U')
}

fn test_it_transcribes_all_dna_nucleotides_to_rna_equivalents() {
  assert to_rna('ACGTGGTCTTAA') or { StringMap({ 'Invalid DNA': err.msg }) } == StringMap('UGCACCAGAAUU')
}

fn test_it_transcribes_all_dna_nucleotides_to_rna_equivalents_including_invalid_dna_nucleotides() {
  assert to_rna('PCJTGGTCTTAA') or { StringMap({ 'Invalid DNA': err.msg }) } == StringMap({ 'Invalid DNA': '?G?ACCAGAAUU' })
}
