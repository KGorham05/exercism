export const translate = (codons) => {
  const PROTEIN_MAP = {
    // Protein : Codon
    "Methionine": ["AUG"],
    "Phenylalanine": ["UUU", "UUC"],
    "Leucine": ["UUA", "UUG"],
    "Serine" : ["UCU", "UCC", "UCA", "UCG"],
    "Tyrosine": ["UAU", "UAC"],
    "Cysteine": ["UGU", "UGC"],
    "Tryptophan": ["UGG"],
    "STOP" : ["UAA", "UAG", "UGA"]
  }

  let proteins = []

  if (codons) {
    let codon_arr = codons.match(/.{1,3}/g)
    for (let i = 0; i < codon_arr.length; i++) {
      let protein = Object.keys(PROTEIN_MAP).find(key => PROTEIN_MAP[key].includes(codon_arr[i]))
      console.log(protein)
      if (!protein) {
        throw "Invalid codon"
      } else if (protein == "STOP") {
        break
      } else {
        proteins.push(protein)
      }
    }
  }
  
  return proteins;
};

translate('UAAUUUUUA')