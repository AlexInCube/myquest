///@description scr_cutscene_set_to_default
function scr_cutscene_set_to_default() {
	obj_player.state=scr_move_state
	obj_camera.target=obj_player
	obj_camera.camera_speed=obj_camera.default_camera_speed
	scr_cutscene_end_action()
}