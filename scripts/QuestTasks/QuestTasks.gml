function task_kill(questid) {
	var stage_array = get_current_quest_array(quest_id)//Get array in current quest list
	stage_array[@ quest_data.task_progress]++//Quest Progress
	
	if obj_questmanager.tracking_quest == questid{
		quest_tracking_update(questid)
	}
	if stage_array[@ quest_data.task_progress]>=number_of_kills{
		quest_update(questid)
		instance_destroy()
	}
}

function task_trigger(questid) {
	quest_update(questid)
	instance_destroy()
}

function task_deliver(questid) {
	quest_update(questid)
	instance_destroy()
}

function task_item_in_slot(inventory_name,slot_id,item_id,questid) {
	if variable_global_exists(inventory_name){
		var inventory = variable_global_get(inventory_name)
	}else{
		show_debug_message("INVENTORY NOT EXISTS, WHAT ARE PUT IN QUEST TASK?")
		exit
	}
	
	if inventory[# slot_id, 0] == item_id{
		quest_update(questid)
		instance_destroy()
	}
}
