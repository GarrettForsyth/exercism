
//empty constructor
DnaTranscriber = function DnaTranscriber(){};

// transforms sequence of DNA nucletides to RNA nucleotides
DnaTranscriber.prototype.toRna = function (dnaSequence){
  rnaSequence = "";

  for(var i=0; i < dnaSequence.length; i++){
    var dnaNucleotide = dnaSequence.charAt(i);
    rnaSequence += this.transformRnaNucleotideToDna(dnaNucleotide);
  }

  return rnaSequence;
}

// transform a single RNA nucleotide to DNA nucleotide
DnaTranscriber.prototype.transformRnaNucleotideToDna = function(dnaNucleotide){

  switch(dnaNucleotide){

  case 'C': return 'G';
  case 'G': return 'C';
  case 'A': return 'U';
  case 'T': return 'A';
  default : throw new Error('Invalid input');

  }

}


module.exports = DnaTranscriber;
