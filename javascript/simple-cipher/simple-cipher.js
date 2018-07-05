
  const upperAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const lowerAlphaet  = "abcdefghijklmnopqrstuvwxyz";
  const KEY_LENGTH = 20;
  const a_CHAR_CODE = 97;
  const z_CHAR_CODE = 122;
  const A_CHAR_CODE = 65;
  const Z_CHAR_CODE = 90;

  Cipher = function Cipher(key){

    if( key === undefined){
      this.key =  this.getRandomKey(KEY_LENGTH);
    }

    else{
       if ((/^[a-z]+$/).test(key)){
         this.key = key;
       }
       else throw new Error('Bad key');
    }
  };


  /* Generates a random key of lower case letters */
  Cipher.prototype.getRandomKey = function(keyLength){

    var key = "";

    for(var i=0; i < keyLength; i++){
     var randomIndex =  Math.random()*26 + 1;
     key += lowerAlphaet.charAt(randomIndex);
    }
   
    return key;
  };

  /* encodes a string using this Cipher's key to shift */
  Cipher.prototype.encode = function(stringToEncode){

    lowerStringToEncode = stringToEncode.toLowerCase();

    var encodedMessage = "";
    var keyIndex = 0;
    var keyLength = this.key.length;

    for(var i=0; i < lowerStringToEncode.length; i++){

      var shiftChar = this.key.charAt(keyIndex);
      var shiftCode = shiftChar.charCodeAt();

      var oldChar = lowerStringToEncode.charAt(i);  
      var oldCode = oldChar.charCodeAt();

      var newCharCode = oldCode + shiftCode - a_CHAR_CODE;

      if (newCharCode > z_CHAR_CODE){
        newCharCode = newCharCode - 26;
      }

      var newChar = String.fromCharCode(newCharCode);
      encodedMessage += newChar;

      // if at end of key, start shifting again
      // using the front of the key
      if((i+1)%keyLength == 0){
      }
      else{
        keyIndex++;
      }
    }

    return encodedMessage;
    
  }

  /* Decodes a string using this Cipher's key */
  Cipher.prototype.decode = function(messageToDecode){

     lowerMessageToDecode = messageToDecode.toLowerCase();
                                                            
     var decodedMessage = "";
     var keyIndex = 0;
     var keyLength = this.key.length;
                                                            
     for(var i=0; i < lowerMessageToDecode.length; i++){
                                                            
       var shiftChar = this.key.charAt(keyIndex);
       var shiftCode = shiftChar.charCodeAt();
                                                            
       var oldChar = lowerMessageToDecode.charAt(i);  
       var oldCode = oldChar.charCodeAt();
                                                            
       var newCharCode = oldCode - shiftCode + a_CHAR_CODE;
                                                            
       if (newCharCode < a_CHAR_CODE){
         newCharCode = newCharCode + 26;
       }
                                                            
       var newChar = String.fromCharCode(newCharCode);
       decodedMessage += newChar;
                                                            
       // if at end of key, start shifting again
       // using the front of the key
       if((i+1)%keyLength == 0){
         keyIndex = 0;
       }
       else{
         keyIndex++;
       }
     }
                                                            
     return decodedMessage;    
 }


module.exports = Cipher;
