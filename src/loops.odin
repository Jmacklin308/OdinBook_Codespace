package odinBook

import "core:fmt"

loops :: proc(passes: int, message: string) {
	//itterate for n passes
	for i := 0; i < passes; i += 1 {
		fmt.println(message)
		i += 1
	}
}
