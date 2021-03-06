if instance_exists(obj_textbox){exit}
if global.interface_lock_by_game {exit}
draw_set_alpha(1)
//Draw buff bar
//Cycle through the player buff_grid
var xx=0, i=0; repeat ds_grid_width(buff_grid){
	//Get struct from buff
	i++
	var effect_id = buff_grid[# i-1,0]
	if is_undefined(effect_id) or effect_id = UNKNOWN_EFFECT{continue}
	var _effect_struct = return_struct_from_effect_index_by_effect_id(buff_grid[# i-1,0])
	if _effect_struct[$ EFFECT_HIDE_ICON] == true{ continue}//If hide_icon true, dont draw icon and dont increase X offset
	draw_effect(172+(32*xx),GUIHEIGHT-40,buff_grid,i-1)
	xx++
}

//Draw items for fast use
for(var i=0;i<5;i++){
	var slot_x = 4+(32*i), slot_y = GUIHEIGHT-66
	draw_sprite(spr_slot,0,slot_x+(1*i),slot_y)
	slot(global.inventory,i,slot_x+(1*i),slot_y,false)
}
//Draw button hints for fast use items
if global.settings.interface.show_button_hint{
draw_button_hint(10,GUIHEIGHT-90,global.settings.controls.inventory_hotkey1)
draw_button_hint(42,GUIHEIGHT-90,global.settings.controls.inventory_hotkey2)
draw_button_hint(76,GUIHEIGHT-90,global.settings.controls.inventory_hotkey3)
draw_button_hint(108,GUIHEIGHT-90,global.settings.controls.inventory_hotkey4)
draw_button_hint(142,GUIHEIGHT-90,global.settings.controls.inventory_hotkey5)
}
draw_set_font(fnt_small)
draw_set_color(c_black)


//PLAYER PORTRAIT
//draw_sprite(spr_player_hud_portrait,0,6,GUIHEIGHT-54)
//draw_sprite_ext(spr_player_down,0,50,GUIHEIGHT-50,2,2,0,c_white,1)
//HEALTH BAR
draw_set_font(fnt_small)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

if hp/max_hp >= 0.66{
	var c=make_color_rgb(0,255,0)
}else if hp/max_hp >= 0.33{
	var c=make_color_rgb(255,255,0)	
}else if hp/max_hp >= 0{
	var c=make_color_rgb(255,0,0)
}
draw_bar(4,GUIHEIGHT-34,hp,max_hp,c)
//MANA BAR
if mana/max_mana >= 0.66{
	var c=make_color_rgb(0,0,255)
}else if mana/max_mana >= 0.33{
	var c=make_color_rgb(0,150,255)	
}else if mana/max_mana >= 0{
	var c=make_color_rgb(0,255,255)
}

draw_bar(4,GUIHEIGHT-20,mana,max_mana,c)
//EXP BAR
draw_rectangle_color_fast(0,GUIHEIGHT-2,GUIWIDTH,GUIHEIGHT,c_yellow,false)
draw_rectangle_color_fast(0,GUIHEIGHT-2,GUIWIDTH*(expr/max_expr),GUIHEIGHT,c_orange,false)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text_shadow(GUIWIDTH/2,GUIHEIGHT-24,lvlword+": "+string(level)+"  "+expword+": "+string(expr)+"/"+string(max_expr)+"  "+string((expr/max_expr)*100)+"%",fnt_small,1,c_gray,c_white,1)
