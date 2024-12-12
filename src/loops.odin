package odinBook

import "core:fmt"

loops :: proc(passes: int, message: string) {
	//itterate for n passes
	for i := 0; i < passes; i += 1 < passes {
		fmt.println(message)
		i += 1
	}
}
