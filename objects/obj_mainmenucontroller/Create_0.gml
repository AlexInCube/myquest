//Switching main menu/pause menu UI state
enum menu_state{
	main_buttons,
	options,
	window_load_save
}

menustate = menu_state.main_buttons
gameversion_word = find_keyword("game_version")

var button_x = 50
ds_menu_main = create_ui_elements_list(
	create_fancy_button(button_x,143,spr_buttonmenu,depth-1,find_keyword("start_game"),	open_game_start_window),
	create_fancy_button(button_x,186,spr_buttonmenu,depth-1,find_keyword("select_save"),open_save_window),
	create_fancy_button(button_x,229,spr_buttonmenu,depth-1,find_keyword("settings"),open_settings),
	create_fancy_button(button_x,272,spr_buttonmenu,depth-1,find_keyword("creators"),open_creators),
	create_fancy_button(button_x,315,spr_buttonmenu,depth-1,find_keyword("exit"),show_exit_question),
)

if debug_mode{
	add_ui_element(ds_menu_main,create_fancy_button(button_x,358,spr_buttonmenu,depth-1,find_keyword("test_room"),test_room_start))	
}

if file_exists("Saves\\"+global.lastsave+"/playerdata.txt"){
	add_ui_element(ds_menu_main,create_fancy_button(button_x,100,spr_buttonmenu,depth-1,find_keyword("continue_game")+"     "+global.lastsave,load_last_player_save))
}