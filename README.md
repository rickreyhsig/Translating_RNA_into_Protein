# Translating RNA into Protein from the ROSALIND project

Given: An RNA string s corresponding to a strand of mRNA (of length at most 10 kbp).

Return: The protein string encoded by s.

<http://rosalind.info/problems/prot/>


*Codons:  (Sequence of 3 nucleotides)
* UUU F      CUU L      AUU I      GUU V
* UUC F      CUC L      AUC I      GUC V
* UUA L      CUA L      AUA I      GUA V
* UUG L      CUG L      AUG M      GUG V
* UCU S      CCU P      ACU T      GCU A
* UCC S      CCC P      ACC T      GCC A
* UCA S      CCA P      ACA T      GCA A
* UCG S      CCG P      ACG T      GCG A
* UAU Y      CAU H      AAU N      GAU D
* UAC Y      CAC H      AAC N      GAC D
* UAA Stop   CAA Q      AAA K      GAA E
* UAG Stop   CAG Q      AAG K      GAG E
* UGU C      CGU R      AGU S      GGU G
* UGC C      CGC R      AGC S      GGC G
* UGA Stop   CGA R      AGA R      GGA G
* UGG W      CGG R      AGG R      GGG G


*start codon (AUG) amino acid METHIONINE
* three stop codons (UAA, UAG, UGA)

*Protein string are built from these cahracters:
* ACDEFGHIKLMNPQRSTVWY

*But NOT these:
* BJOUXZ

*Sample Dataset - Sample Output
* AUG - M
* GCC - A
* AUG - M
* GCG - A
* CCC - P
* AGA - R
* ACU - T
* GAG - E
* AUC - I
* AAU - N
* AGU - S
* ACC - T
* CGU - R
* AUU - I
* AAC - N
* GGG - G
* UGA - Stop
* MAMAPRTEINSTRING
