const std = @import("std");
const Vector = std.meta.Vector;

// 01. Returns the last element of the array.
//
// NOTE: how to to do generics in Zig?
//
fn last(v: []const i32) ?i32 {
    if (0 == v.len) {
        return null;
    }
    return v[v.len - 1];
}

test "last: simple i32 array" {
    const v = &[_]i32{ 0, 1, 2, 3 };
    try std.testing.expectEqual(v[3], last(v).?);
}

test "last: empty array" {
    // NOTE: how to avoid this?
    if (last(&[_]i32{})) |res| {
        // Should never go here
        try std.testing.expect(0 == res);
    } else {
        try std.testing.expect(true);
    }
}
