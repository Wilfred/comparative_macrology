// Compile with:
// $ sjs -o output.js swap.js
// Run with:
// $ node --harmony output.js
// (requires appending "use strict";)

macro eachIt {
    rule { ($x) {$y} } => {
        for (var i=0; i<$x.length; i++) {
            var it = $x[i];
            $y;
        }
    }
}

var myArray = [1, 2, 3];
eachIt(myArray) {
    console.log(it);
}
