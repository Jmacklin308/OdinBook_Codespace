package chapter6

import "core:fmt"
import "core:strconv"


increment_number :: proc(num: ^int){
    //we take in the memory address - num
    //we then extract the value from it with a ^ following the value.. dereferencing
    
    //so get the memory address, then grab the value 
    num^ += 1
    
    //^ left = denoting a type
    //right ^ = read the value
}

