package chapter4


import "core:fmt"

allTogether :: proc()
{
	//get an array
	coolArray := [10]f32 {
		12,123,85,32,23,50,64,32,34,65
	}
	
	compareToNumber : f32 = 12
	
	for i := 0; i < len(coolArray); i += 1 {
		if isBiggerThan(coolArray[i], compareToNumber){
			fmt.println("Number: ", coolArray[i], " is not bigger than ", compareToNumber)
		}
	} 
	//print if number in array is bigger than v
}

isBiggerThan :: proc(number: f32, compareTo: f32) -> bool {
	return number > compareTo
}