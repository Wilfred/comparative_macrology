// Compile with:
// $ sjs -o output.js swap.js
// Run with:
// $ node --harmony output.js
// (requires appending "use strict";)

macro swap {
    rule { ($x, $y) } => {
        let tmp = $x;
        $x = $y;
        $y = tmp;
    }
}

var a = 1, b = 2;
swap(a, b);
console.log([a, b]);
