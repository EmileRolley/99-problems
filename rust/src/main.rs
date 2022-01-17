#![allow(dead_code)]

// 01. Returns the last element of a list.
fn last<T: Copy>(v: Vec<T>) -> Option<T> {
    return if v.is_empty() {
        None
    } else {
        v.get(v.len() - 1).copied()
    };
}

#[test]
fn test_last() {
    assert_eq!(None, last(Vec::<i8>::new()));
    assert_eq!(Some(2), last(vec![0, 1, 2]));
    assert_eq!(Some("2"), last(vec!["0", "1", "2"]));
}

fn main() {}
