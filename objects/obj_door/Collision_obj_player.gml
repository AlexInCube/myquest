if (room_exists(new_room)){
	if new_room != room{//If new_room not current room, then save current room state.
		global.load_state = load_state.auto_save
		obj_controller.room_data = return_room_data()
		obj_controller.previous_room = room
		room_goto(new_room)
		obj_player.x = new_x
		obj_player.y = new_y
	}else{
		obj_player.x = new_x
		obj_player.y = new_y
	}
}