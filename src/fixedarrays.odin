package odinBook


import fmt "core:fmt"


fixedArrays :: proc() {
	//creating a fixed array
	my_ten_ints: [10]int // <-- all ints are initialized to zero
	//same way of saying myInt : int

	//display the third item
	fmt.println("Third item in array is :", my_ten_ints[9])


}
