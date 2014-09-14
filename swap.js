// Compile with:
// $ sjs -o output.js swap.js

macro swap {
    rule { ($x, $y) } => {
        let tmp = $x;
        $x = $y;
        $y = $x;
    }
}

var a = 1, b = 2;
swap(a, b);
console.log([a, b]);
