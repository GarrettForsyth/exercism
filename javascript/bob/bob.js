
const BOB_RESPONSE_TO_QUESTION  = "Sure.";
const BOB_RESPONSE_TO_YELLING   = "Whoa, chill out!";
const BOB_RESPONSE_TO_NOTHING   = "Fine. Be that way!";
const BOB_DEFAULT_RESPONSE      = "Whatever.";

Bob = function(){}

// take question to be anything containing a '?' character
// take yelling to be all caps
// take nothing to be containing no non blank characters

Bob.prototype.hey = function(input){
  if (input ===  input.toUpperCase())     return BOB_RESPONSE_TO_YELLING; 
  if (input.indexOf('?') !== -1)          return BOB_RESPONSE_TO_QUESTION;
  // regex will match string that contains at least one non-space 
  if (input.match(/^\s*$/) !== null) return BOB_RESPONSE_TO_NOTHING;
  return BOB_DEFAULT_RESPONSE;
}

module.exports = Bob;
