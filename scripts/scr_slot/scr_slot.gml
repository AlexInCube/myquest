/// @description scr_slot(inventory_id,slot_id,x,y);
/// @function scr_slot
/// @param inventory_ID
/// @param slot_ID
/// @param x
/// @param y

var inventory = argument[0]
var slot_id = argument[1]
var xx = argument[2]
var yy = argument[3]


if scr_mouseover(xx,yy,xx+32,yy+32){
	//If mouse left click over slot and them have any item, take all amount of items or we have item in mouse then we put or switch items in slots
	draw_sprite(spr_slot_backlight,0,xx,yy)

	if mouse_check_button_pressed(mb_left)
		{
		var iid = inventory[# slot_id, 0]
		var amount = inventory[# slot_id, 1]
		var mouse_iid = global.mouse_slot[# 0, 0];
		var mouse_amount = global.mouse_slot[# 0, 1];

		if (iid == 0 || mouse_iid == 0 || iid != mouse_iid) //If either slot is empty, or the two slots don't match
		 {
			//Switch the slots
			inventory[# slot_id, 0] = mouse_iid;
			inventory[# slot_id, 1] = mouse_amount;
			global.mouse_slot[# 0, 0] = iid;
			global.mouse_slot[# 0, 1] = amount;
			}
		else if (iid == mouse_iid) //If both slots are the same
		 {
			//Take all mouse items and put them in inventory
			
			while inventory[# slot_id, 1] < global.item_index[# inventory[# slot_id, 0], item_stat.stackable] and global.mouse_slot[# 0, 1]>0
			 {
				inventory[# slot_id, 1] += 1;
				global.mouse_slot[# 0, 1] -= 1;
				if (global.mouse_slot[# 0, 1] <= 0)
				 {
					global.mouse_slot[# 0, 0] = item.none;
					global.mouse_slot[# 0, 1] = 0;
					
					}
				}
			}
			
		}
	
	
	//If mouse right click over slot and them have any item, take only one item from stack
	if mouse_check_button_pressed(mb_right)
	{
		if global.mouse_slot[# 0, 0]==item.none or global.mouse_slot[# 0, 0]==inventory[# slot_id, 0]//To grab more items in mouse slot, we check match in slots
		{
				if global.mouse_slot[# 0, 1]< global.item_index[# inventory[# slot_id, 0], item_stat.stackable]//If item max stack more them amount item in mouse, we grab one more item.
				{
				inventory[# slot_id, 1] -= 1
				var iid = inventory[# slot_id, 0]
				global.mouse_slot[# 0, 0] = iid;
				global.mouse_slot[# 0, 1] += 1
			
				if inventory[# slot_id, 1] < 1//If amount of items where we grab them has become zero, remove info in slot about this item.
				{
					inventory[# slot_id, 0] = item.none
					inventory[# slot_id, 1] = 0
				}
			}
		}
	}
	
	
	//Drop Item From Inventory
	if obj_controller.drop_item_key and inventory[# slot_id, 0] != item.none
	{
		var xx=obj_player.x
		var yy=obj_player.y
		
		if obj_controller.combination_key
		{
			var itemdropped=instance_create_layer(xx,yy,"Instances",obj_item)
			itemdropped.whatitem=inventory[# slot_id, 0]
			itemdropped.amount=1
			
			inventory[# slot_id, 1]-=1
			if inventory[# slot_id, 1]==0
			{
				inventory[# slot_id, 0]=item.none
				inventory[# slot_id, 1]=0
			}
		}
		else
		{
			var itemdropped=instance_create_layer(xx,yy,"Instances",obj_item)
			itemdropped.whatitem=inventory[# slot_id, 0]
			itemdropped.amount=inventory[# slot_id, 1]
			inventory[# slot_id, 0]=item.none
			inventory[# slot_id, 1]=0
		}
	}
}
	