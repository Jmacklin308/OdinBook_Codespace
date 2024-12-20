package odinBook

import "book/chapter3"
import "book/chapter4"
import "book/chapter5"
import "book/chapter6"
import "core:fmt"
import "core:mem"

main :: proc() {
	// track for memory leaks
	when ODIN_DEBUG {
		track: mem.Tracking_Allocator
		mem.tracking_allocator_init(&track, context.allocator)
		context.allocator = mem.tracking_allocator(&track)

		defer {
			if len(track.allocation_map) > 0 {
				fmt.eprintf("=== %v allocations not freed: ===\n", len(track.allocation_map))
				for _, entry in track.allocation_map {
					fmt.eprintf("- %v bytes @ %v\n", entry.size, entry.location)
				}
			}
			if len(track.bad_free_array) > 0 {
				fmt.eprintf("=== %v incorrect frees: ===\n", len(track.bad_free_array))
				for entry in track.bad_free_array {
					fmt.eprintf("- %p @ %v\n", entry.memory, entry.location)
				}
			}
			mem.tracking_allocator_destroy(&track)
		}
	}

	// chapter 3 flip to true when ready
	if false {
		chapter3.variables()
		chapter3.constants()

	}
	//chapter 4 - flip to true when ready
	if false {
		chapter4.isOldEnough(27, "justin") //procedures

		//loops
		chapter4.loops(20, "YOLO")
		chapter4.loops2(10, "Some message")

		//fixed arrays
		chapter4.fixedArrays()

		// all concepts together
		chapter4.allTogether()
	}
	//chapter 5 - flip to true when ready
	if false {
		chapter5.rectangleTest()
		chapter5.usingTest()
	}
	
	if true {
	   //create a variable
	   number := 7
	   
	   //variable points to memory location of number with & - this value is of type ^int
	   number_pointer := &number
	   
	   test := 5
	   test_pointer := &test
	   
	   chapter6.increment_number(number_pointer)
	   fmt.println("Pointer number is:", number)
	   fmt.println("pointer address:", test_pointer)
	}
}
