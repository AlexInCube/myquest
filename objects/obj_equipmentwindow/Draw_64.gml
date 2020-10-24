event_inherited()

	for(i=0;i<inventory_size;i++)
	{
		//Draw sprite from item in slot
			if inventory[# i, 0]!=item.none
			{
				draw_sprite(global.item_index[# inventory[# i, 0], item_stat.sprite_index],1,slotsxy[i,0]+16,slotsxy[i,1]+16)
			}
			//Draw item amount if item amount in slots more than 1
			if inventory[# i, 1]>1
			{
				draw_text(slotsxy[i,0]+2,slotsxy[i,1]+12,inventory[# i, 1])
			}
	
		if placefree{
			slot(inventory,i,slotsxy[i,0],slotsxy[i,1])
		}
	}

	if placefree{
		for(i=0;i<inventory_size;i++)
		{
		if inventory[# i, 0]!=item.none
			{
				if mouseover(slotsxy[i,0],slotsxy[i,1],slotsxy[i,0]+32,slotsxy[i,1]+32)
				{
					draw_item_stat_mouse(inventory,i)
				}
			}
		}
	}

	draw_text(window_x+92,window_y+28,obj_player_stats.max_hp)
	draw_text(window_x+92,window_y+44,obj_player_stats.max_mana)
	draw_text(window_x+92,window_y+60,obj_player_stats.phys_armor)
	draw_text(window_x+92,window_y+76,obj_player_stats.magic_armor)
	draw_text(window_x+92,window_y+92,obj_player_stats.phys_damage)
	draw_text(window_x+92,window_y+108,obj_player_stats.magic_damage)
	draw_text(window_x+140,window_y+28,obj_player_stats.strength)
	draw_text(window_x+140,window_y+44,obj_player_stats.intelligence)
	draw_text(window_x+140,window_y+60,obj_player_stats.luck)