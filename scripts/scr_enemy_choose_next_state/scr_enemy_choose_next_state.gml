if (alarm[0] <= 0){
	state = choose(scr_enemy_idle_state,scr_enemy_wander_state)
	alarm[0] = room_speed*irandom_range(2,3)
	targetx = irandom(room_width)
	targety = irandom(room_height)
}