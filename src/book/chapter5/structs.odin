package chapter5

import "core:fmt"
import "core:strconv"

Vector2 :: struct {
	x: f64,
	y: f64,
}


Entity :: struct {
	position: Vector2,
}


//A pattern emerges... :: for constants, procedures, and now structs... 
//... whatever needs to be known at compile time needs to be declared with ::
Rectangle :: struct {
	using entity: Entity,
	width:        f64,
	height:       f64,
}


Player :: struct {
	using rect: Rectangle, // allows use: player.x instead of player.rect.x
	speed:      f64,
}


rectangleTest :: proc() {
	//intialize the rect
	rect: Rectangle = Rectangle {
		width  = 20,
		height = 20,
		//x = 0 unless changed
		//y = 0 unless changed
	}


	fmt.println("Rect location is ", rect.position.x, "/", rect.position.y)
}


//for 'using' keyword
usingTest :: proc() {
	player: Player = {
		position ={
			12,
			23
		}
	}



	//test ypes
	typeTest(player)


}

typeTest :: proc(e: Entity) {
    // Print out the location values of any entity
	
	strBuff : []byte
	

    fmt.println("Entity position is: X:",e.position.x, "Y:",e.position.y)
}
