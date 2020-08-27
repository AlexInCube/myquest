enum menu_element_type{
	button
}

//Button second argument is array for button state and txt color
ds_menu_main = scr_create_menu_page(
	[scr_find_keyword("start_game"),	menu_element_type.button, 0, scr_game_start],
	[scr_find_keyword("continue_game"),	menu_element_type.button, 0, scr_continue_game],
	[scr_find_keyword("settings"),		menu_element_type.button, 0, scr_open_settings],
	[scr_find_keyword("creators"),		menu_element_type.button, 0, nothing],
	[scr_find_keyword("exit"),			menu_element_type.button, 0, scr_game_exit]
)

ds_menu_height = ds_grid_height(ds_menu_main)
button_sprite = spr_buttonmenu
button_width = sprite_get_width(button_sprite)
button_height = sprite_get_height(button_sprite)
button_x = 50

