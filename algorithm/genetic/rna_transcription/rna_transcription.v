module rna_transcription

import strings { new_builder }

struct ToRNAError {
  msg string
  code int
}

fn to_rna(dna string) ?string {
  mut rna := new_builder(0)
  mut has_error := false

  for nucleotide in dna {
    rna.write_b(match nucleotide {
      `A` {`U`}
      `T` {`A`}
      `C` {`G`}
      `G` {`C`}
      else {
        has_error = true
        `?`
      }
    })
  }

  if has_error {
    return IError(ToRNAError{msg: rna.str()})
  }

  return rna.str()
}
