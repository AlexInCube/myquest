event_inherited(); //so it will inherit from par_speaker


//-------DIALOGUE STUFF

myPortrait			= spr_penguinportrait;
myVoice				= snd_voice6;
myName				= "Васян";

//-------OTHER

choice_variable		= 0;	//the variable we change depending on the player's choice in dialogue
phy_fixed_rotation=true

sprite[RIGHT,MOVE] = spr_penguin_right
sprite[UP,MOVE] = spr_penguin_up
sprite[LEFT,MOVE] = spr_penguin_left
sprite[DOWN,MOVE] = spr_penguin_down