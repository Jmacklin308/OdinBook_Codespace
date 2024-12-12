# Chapter 3 - Variables and constants

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

# Chapter 4 - Additional Basics

proc - stands for procedure

if statements don't have () around the condition.

```odin
if someNumber == 5 {
	fmt.println("Number is: ", 5)
}
```

if you want to have it in one line

```odin

if someNumber == 5 do fmt.println("Number is: ", 5)

//OR

if someNumber == 5 { fmt.println("Number is: ", 5) }


```

## For loops

There is only one loop type in odin. The for loop

While loop like:

```odin
	for{
		//do something endlessly
		break; //to break it
	}
```

typical for loop:

```odin
for i := 0; i < 10; i += 1 {
	continue; // skip a lap
}
```

Modern for loop:

```odin
for i in 0..<10 {

}
```

odin has labels for loops

```odin

outer: for x in 0..<20 {
	for y in 0..<20 {
		if x == 5 && y == 5 {
			break outer // break the outer loop
		}
	}
}

```

## Fixed arrays

how to declare a array:

```odin
newArray : [10]int
```

how to define an array

```odin
//the = is important... I keep forgeting this -_-
newArray := [10]int{
	61, 81, 12, 41, 5, 10, 1234, 8, 4, 1,
}
```

if there is too many values in a array the compiler will error out.

# Chapter 5 - Making new types
