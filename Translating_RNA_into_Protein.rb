#!/usr/bin/env ruby

# Obtain file contents
file_content = ARGV[0]

# Place file content in file variable
file = File.open(file_content, "r")

# Read file contents and place it inside variable
content = file.read

# Place strings in array three elements per line
protein_codon = content.scan(/.{3}/)

codon_dict = {
  UUU: 'F',
  UUC: 'F',
  UUA: 'L',
  UUG: 'L',
  UCU: 'S',
  UCC: 'S',
  UCA: 'S',
  UCG: 'S',
  UAU: 'Y',
  UAC: 'Y',
  UAA: 'Stop',
  UAG: 'Stop',
  UGU: 'C',
  UGC: 'C',
  UGA: 'Stop',
  UGG: 'W',

  CUU: 'L',
  CUC: 'L',
  CUA: 'L',
  CUG: 'L',
  CCU: 'P',
  CCC: 'P',
  CCA: 'P',
  CCG: 'P',
  CAU: 'H',
  CAC: 'H',
  CAA: 'Q',
  CAG: 'Q',
  CGU: 'R',
  CGC: 'R',
  CGA: 'R',
  CGG: 'R',

  AUU: 'I',
  AUC: 'I',
  AUA: 'I',
  AUG: 'M',
  ACU: 'T',
  ACC: 'T',
  ACA: 'T',
  ACG: 'T',
  AAU: 'N',
  AAC: 'N',
  AAA: 'K',
  AAG: 'K',
  AGU: 'S',
  AGC: 'S',
  AGA: 'R',
  AGG: 'R',

  GUU: 'V',
  GUC: 'V',
  GUA: 'V',
  GUG: 'V',
  GCU: 'A',
  GCC: 'A',
  GCA: 'A',
  GCG: 'A',
  GAU: 'D',
  GAC: 'D',
  GAA: 'E',
  GAG: 'E',
  GGU: 'G',
  GGC: 'G',
  GGA: 'G',
  GGG: 'G',
}

protein_string = ""

protein_codon.each do | codon |
  protein_string << codon_dict.values_at(codon.to_sym)[0] if codon_dict.values_at(codon.to_sym)[0] != "Stop"
end

puts protein_string
