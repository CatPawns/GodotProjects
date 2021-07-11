extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var CorrectSound = preload("res://120bpm 4_4.wav")
	print(CorrectSound)
	stream = CorrectSound
	autoplay = true
	play()
	pass # Replace with function body.

func _physics_process(delta):
	if(!is_playing()):
		play()
	pass
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
