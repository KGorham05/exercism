const RNAMAP = {
  "G": "C",
  "C": "G",
  "T": "A",
  "A": "U"
};

/** @param {dna} string */
export const toRna = dna => dna.replace(/[CTGA]/g, nucleotide => RNAMAP[nucleotide]);

