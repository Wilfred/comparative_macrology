// Compile with:
// $ sjs -o output.js swap.js --readable-names
// Run with:
// $ node output.js

macro swap {
    rule { ($x, $y) } => {
        var tmp = $x;
        $x = $y;
        $y = tmp;
    }
}

var a = 1, b = 2;
swap(a, b);
console.log([a, b]);
