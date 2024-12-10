package odinBook

import fmt "core:fmt"

constants :: proc() {
	MY_AGE: int : 27

	UNTYPED_CONST :: 12

	UNTYPED_CONST :: 23.5

	fmt.println("My age is ", UNTYPED_CONST)
}
