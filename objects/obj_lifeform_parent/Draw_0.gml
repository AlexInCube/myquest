draw_self()
effect_cycle_grid(id)

if obj_controller.addition_key{
	draw_healthbar(phy_position_x-10,phy_position_y-10,phy_position_x+10,phy_position_y-5,(max_hp/hp)*100,c_black,c_red,c_green,0,true,true)
}