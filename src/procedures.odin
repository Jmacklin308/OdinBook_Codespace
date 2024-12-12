package odinBook


import fmt "core:fmt"

//takes in parameters and returns a bool
isOldEnough :: proc(age: int, name: string) -> bool {
	oe: bool = age >= 18
	if oe do fmt.print(name, " is old enough!")
	return oe
}
