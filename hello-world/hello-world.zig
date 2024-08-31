const std = @import("std");

pub fn main() !void {
    //In Zig, the standard output writer's print function is allowed to fail because it is actually a function defined as part of a generic Writer.
    //Consider a generic Writer that represents writing data to a file. When the disk is full, a write to the file will fail.
    //However, we typically do not expect writing text to the standard output to fai
    const stdout = std.io.getStdOut().writer();
    try stdout.print("writer: Hello, {s}!\n\n", .{"world"});

    //other way to print

    //Info
    const info = std.log.info;
    info("Hello, {s}!\n", .{"world"});

    //Error
    const debug = std.log.debug;
    debug("Hello, {s}!\n", .{"world"});

    //print
    const print = std.debug.print;
    print("print: Hello, {s}!\n", .{"world"});
}
