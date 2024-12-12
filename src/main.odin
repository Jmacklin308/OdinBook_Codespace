package odinBook

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
		variables()
		constants()

	}
	//chapter 4 - flip to true when ready
	if false {
		//procedures
		isOldEnough(27, "justin")

		//loops
		loops(20, "YOLO")
		loops2(10, "Some message")

		//fixed arrays
		fixedArrays()


		// all concepts together
		allTogether()
	}

}
