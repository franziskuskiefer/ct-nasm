
fn get_bit(x: u32, i: u32) -> u32 {
    (x >> i) & 1
}

fn set_bit(x: u32, b: u32, i: u32) -> u32 {
    let tmp1 = !(1u32 << i);
    let tmp2 = b << i;
    (x & tmp1) | tmp2
}

fn set(x: u32, pos: u32, y: u32, yi: u32) -> u32 {
    let b = get_bit(y, yi);
    set_bit(x, b, pos)
}

fn cswap(x: u32, y: u32, c: u32) -> (u32, u32) {
    let mask = c & (x ^ y);
    (x ^ mask, y ^ mask)
}

fn cset_bit(x: u32, b: u32, i: u32, c: u32) -> u32 {
    let set = set_bit(x, b, i);
    cswap(x, set, c).0
}

fn greater_than_or_equal_bm(x: u32, y: u32) -> u32 {
    let x_xor_y = x ^ y;
    let x_sub_y = x.wrapping_sub(y);
    let x_sub_y_xor_y = x_sub_y ^ y;
    let q = x_xor_y | x_sub_y_xor_y;
    let x_xor_q = x ^ q;
    let xnx = x_xor_q >> (32 - 1);
    xnx.wrapping_sub(1)
}

fn csub(x: u32, y: u32, c: u32) -> u32 {
    let diff = x.wrapping_sub(y);
    cswap(x, diff, c).0
}

pub fn ct_div(a: u32, d: u32) -> (u32, u32) {
    let mut q = 0;
    let mut r = 0;
    for i in (0..32).rev() {
        r = set(r << 1, 0, a, i);
        let geq = greater_than_or_equal_bm(r, d);
        r = csub(r, d, geq);
        q = cset_bit(q, 1, i, geq);
    }
    (q, r)
}
