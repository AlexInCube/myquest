function draw_black_screen() {
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0,GUIWIDTH,GUIHEIGHT,false)
	draw_set_alpha(1)
}
