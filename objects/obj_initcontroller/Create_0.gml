/// @description Insert description here
// You can write your code in this editor
ini_open("game_settings.ini")
global.mastervolume=		ini_read_real("Sounds", "mastervolume", 0.5)
global.musicvolume=			ini_read_real("Sounds", "musicvolume", 0.5)
global.soundvolume=			ini_read_real("Sounds", "soundvolume", 0.5)
global.fullscreen=			ini_read_real("Graphics", "fullscreen", false)
global.width=				ini_read_real("Graphics", "width", 1280)
global.height=				ini_read_real("Graphics", "height", 720)


global.guisize=				ini_read_real("Interface", "guisize", 1)
global.language=			ini_read_string("Interface", "language", "russian")
global.showdamage =			ini_read_real("Interface","show_damage",true)

global.key_up =				ini_read_real("Keys","key_up",ord("W"))				
global.key_left =			ini_read_real("Keys","key_left",ord("A"))
global.key_right =			ini_read_real("Keys","key_right",ord("D"))
global.key_down =			ini_read_real("Keys","key_down",ord("S"))

global.inventory_hotkey1 =	ini_read_real("Keys","inventory_hotkey1",ord("1"))
global.inventory_hotkey2 =	ini_read_real("Keys","inventory_hotkey2",ord("2"))
global.inventory_hotkey3 =	ini_read_real("Keys","inventory_hotkey3",ord("3"))
global.inventory_hotkey4 =	ini_read_real("Keys","inventory_hotkey4",ord("4"))
global.inventory_hotkey5 =	ini_read_real("Keys","inventory_hotkey5",ord("5"))
global.inventory_hotkey6 =	ini_read_real("Keys","inventory_hotkey6",ord("6"))
global.inventory_hotkey7 =	ini_read_real("Keys","inventory_hotkey7",ord("7"))
global.inventory_hotkey8 =	ini_read_real("Keys","inventory_hotkey8",ord("8"))
global.inventory_hotkey9 =	ini_read_real("Keys","inventory_hotkey9",ord("9"))
global.inventory_hotkey10 =	ini_read_real("Keys","inventory_hotkey10",ord("0"))

global.pickup_key =			ini_read_real("Keys","pickup_key",vk_space)
global.interact_key =		ini_read_real("Keys","interact_key",ord("E"))
global.attack_key =			ini_read_real("Keys","attack_key",ord("V"))
global.skillbook_key =		ord("O")
global.inventory_key =		ini_read_real("Keys","inventory_key",ord("I"))
global.drop_item_key =		ini_read_real("Keys","drop_item_key",ord("Q"))
global.combination_key =	ini_read_real("Keys","combination_key",vk_control)
global.pause_key =			ini_read_real("Keys","pause_key",vk_escape)

global.developer_key =		ini_read_real("Keys","developer_key",vk_f5)
ini_close()

global.window_list=ds_list_create()//For window system



draw_set_font(fnt_small)
alarm[0]=1
