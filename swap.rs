#![feature(macro_rules)]

macro_rules! swap {
    ($x:ident, $y:ident) => {
        {
            let tmp = $x;
            $x = $y;
            $y = tmp;
        }
    }
}

fn main() {
    let mut a = 1i;
    let mut b = 2i;

    swap!(a, b);
        
    println!("a: {} b: {}", a, b);
}
