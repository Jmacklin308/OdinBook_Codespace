## Chapter 3

Constants can be declared with `::`

` CONSTANT_NUMBER :: 12` has a type of "untyped integer"

Untyped types -
- untyped integer - can cast into i8 i16 i32 i64
- untyped float - can cast into f8 f16 f32 f64

untyped types are used by constants. 

## benefits of untyped types

in other languages 0.5f reperesents a 32bit float while 0.5 represents a 64bit. Odin delays that choice of distinct type, leaving it untyped for as long as possible... pretty much allowing you to just type `0.5` and not having to worry about the type

explicit cast like `0.5f` clutter the code.


## Basic types

bools - just use `bool` in odin. Other bools like b8 b16 b32 are just used for interfacing with other languages

