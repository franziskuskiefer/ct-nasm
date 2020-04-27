
mod div;
mod div32;

fn main() {
    let x = 316u32;
    let y = 7;
    println!("{} / {} = {:?}", x, y, div32::ct_div(x, y));
    println!("{} / {} = {:?}", x, y, div::ct_div(x, y));
}
