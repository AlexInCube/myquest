ds_saves = ds_list_create()

event_user(0)

drawelementstart = 0//Start drawing ds_list from position

sprite = spr_load_window
//Window Width and Height (sl - SpriteLoad, ss - SpriteSlot)
sl_w = sprite_get_width(sprite) 
sl_h = sprite_get_height(sprite)
ss_w = sprite_get_width(spr_save_slot)
ss_h = sprite_get_height(spr_save_slot)

createslot_word = scr_find_keyword("create_new_save_slot")
