function open_inventory() {
	if !instance_exists(inventorywindow){
		inventorywindow=create_window(inventory_window_x,inventory_window_y,obj_inventorywindow)
		with(inventorywindow){
			event_user(0)
		}
	}else{
		instance_destroy(inventorywindow)
	}
	return inventorywindow
}

