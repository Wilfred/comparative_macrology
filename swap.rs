#![feature(macro_rules)]

macro_rules! swap {
    ($x:expr, $y:expr) => {
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

    let mut c = [3i, 4i];

    swap!(c[0], c[1]);
    println!("c[0]: {} c[1]: {}", c[0], c[1]);
}
