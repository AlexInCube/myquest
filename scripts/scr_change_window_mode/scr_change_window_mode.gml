function scr_change_window_mode(argument0) {
	global.fullscreen=argument0
	window_set_fullscreen(global.fullscreen)
	/*
	window_set_size(global.width,global.height)
	scr_change_gui_size(global.guisize)
	surface_resize(application_surface,global.width,global.height);

/* end scr_change_window_mode */
}
