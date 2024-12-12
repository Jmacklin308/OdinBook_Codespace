package odinBook

import fmt "core:fmt"

loops :: proc(passes: int, message: string) {
	//itterate for n passes
	curPass: int = 1
	for i := 0; i < passes; i += 1 {
		fmt.println("{", curPass, "}", message)
		curPass += 1
	}
}

loops2 :: proc(passes: int, message: string) {

	curPass: int = 1
	for i := 0; i < passes * 2; i += 1 {
		if i % 2 == 0 {
			//skip every even number
			continue
		}
		fmt.println("{", curPass, "}", "The number is: ", i, " and the message is ", message)
		curPass += 1
	}
}
