
/* The plan of attack is to check each sentence, character
 * by character and to track whether each letter has
 * occurred by keeping a boolean array that represents
 * each character (a=0, b=2, .. z = 25) 
 */

const a_CHAR_CODE = 97; 
const NUMBER_OF_LETTERS = 26;

Pangram = function Pangram(sentence){
  this.sentence = sentence.toLowerCase();
}

/* Returns true if pangram */
Pangram.prototype.isPangram = function(){

  /* ensure array is entirely false before beginning */
  this.lettersSeen  =  new Array(NUMBER_OF_LETTERS).fill(false);

  for(var i = 0; i < this.sentence.length; i ++){
    var currLet = this.sentence.charAt(i); 
    /* if current letter is alpha */
    if (/[a-z]/.test(currLet)){
      var alphaPosition = currLet.charCodeAt() - a_CHAR_CODE;
      this.lettersSeen[alphaPosition] = true; 
    }
  }
  
  return this.allLettersHaveOccured();
}


/* checks bookkeeping array and returns true if all letters
 * have occurred */
Pangram.prototype.allLettersHaveOccured = function(){
  for (var i = 0; i < NUMBER_OF_LETTERS; i++){
    if (this.lettersSeen[i] === false) return false;
  } 
  return true;
}

module.exports = Pangram;
