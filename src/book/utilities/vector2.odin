package utilities

import "core:fmt"

printNewVector :: proc(x: f64, y: f64) {
	fmt.print("Vector2(", x, ",", y, ")")
}
