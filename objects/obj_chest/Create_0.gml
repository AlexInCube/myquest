guiid=noone
chestname="Chest"
slots_quantity = 15
chestinventory = ds_grid_create(slots_quantity, INVENTORY_HEIGHT); 
ds_grid_clear(chestinventory,NO_ITEM)


interact_radius = 16
function interact(){
	if instance_exists(guiid){instance_destroy(guiid)}
	guiid=create_window(300,300,obj_inventorywindow)
	with(guiid){
		event_user(0)
	}
	guiid.window_name = chestname
	guiid.inventory = chestinventory
	guiid.window_sprite = spr_chestmenu
}