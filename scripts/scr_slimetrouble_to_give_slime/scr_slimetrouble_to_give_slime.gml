var choice = argument0//if 0 give coin, if 1 give salve, if 2 for nothing
scr_deliver_items(item.slime,1)
if choice == 0
{
	scr_gain_item(item.coin,1)
}
else if choice == 1
{
	scr_gain_item(item.star_salve,1)
}

change_variable(obj_nikitanpc,"choice_variable","nikita_thanks_for_help")