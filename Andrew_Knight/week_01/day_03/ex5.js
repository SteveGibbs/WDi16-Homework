console.log("Howdy Gov");
//
// Create a function called verbing. It should take a single argument, a string.
// If its length is at least 3, it should add 'ing' to its end, unless it
// already ends in 'ing', in which case it should add 'ly' instead.
// If the string length is less than 3, it should leave it unchanged. For example:
//   verbing('swim'): 'swimming'
//   verbing('swimming'): 'swimmingly'
//   verbing('go'): 'go'

var verbing = function (string) {
    var endOfString = string.slice ( -3 );
    var stringLength = string.length;

      if ( stringLength <= 3 ) {
        console.log( string );

      } else if ( endOfString === "ing" ) {
          console.log ( string + "ly");

      } else if ( stringLength >= 3 ) {
          console.log ( string + "ming" );
        }

  };
verbing ("swimming");
