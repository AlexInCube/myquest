/// @description Insert description here
// You can write your code in this editor

hp=10
maxhp=10
basemaxhp=10
maxhpbuff=0
maxhpbufflevel=0
hpregen=0

mana=10
maxmana=10
basemaxmana=10
maxmanabuff=0
maxmanabufflevel=0
manaregen=0

attack=0
magicattack=0

physarmor=0
magicarmor=0

strength=0
basestrength=0
strengthbufflevel=0

intelligence=0
baseintelligence=0
intelligencebufflevel=0

luck=0
baseluck=0
luckbufflevel=0




/*
ds_map_add(global.stats,"physdamagebuff",0)
ds_map_add(global.stats,"magicdamagebuff",0)
ds_map_add(global.stats,"physresistance",0)
ds_map_add(global.stats,"magicresistance",0)
ds_map_add(global.stats,"physresistancebuff",0)
ds_map_add(global.stats,"magicresistancebuff",0)
ds_map_add(global.stats,"strength",0)//inscrease physical damage resistance and physical damage deal
ds_map_add(global.stats,"intelligence",0)//inscrease magical damage resistance and magical damage deal
*/



expr=0//Player current xp
maxexpr=3//Player need xp to level up
level=1//Player Level
skillpoints=0//Skillpoint for level up player stats

guistate="isClosed"//Skillbook state