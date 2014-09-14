// Compile with:
// $ sjs -o output.js eachit.js --readable-names
// Run with:
// $ node output.js

macro eachIt {
    case { $eachIt_name ($x) {$y...} } => {
        // Create an `it` variable using the lexical context
        // of `eachIt`.
        var it = makeIdent("it", #{$eachIt_name});
        letstx $it = [it];
        return #{
            for (var i=0; i<$x.length; i++) {
                (function($it) {
                    $y...
                })($x[i]);
            }
        }
    }
}

var myArray = [1, 2, 3];
eachIt(myArray) {
    console.log(it);
    console.log(it * 10);
}
