portrait = spr_portrait
voice = snd_voice
name = "npc_adekvat_name"
text = [
"npc_adekvat_dialog1",
[
"npc_adekvat_answer1",
"npc_adekvat_answer2"
],
"ТОГДА ИДИ И УБЕЙ ЕГО",
"Тебя жизнь наказала, а не его",
"Может всё таки передумаешь?",
[
	"Да",
	"Нет",
	"Давай я тебя зарублю?"
],
"Я рад что ты передумал",
"Пиздуй отсюда если так",
"Ты чё ахуел?"
]
speakers = [id, obj_player, id, id, id, obj_player, id, id, id]
next_line = [0, [2,3],-1,4,5,[6,7,8],-1,-1,-1]
scripts =-1