extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var CorrectSound = preload("res://click1.wav")
	$AudioStreamPlayer2D.stream = CorrectSound
	pass # Replace with function body.

func _physics_process(delta):
	$AudioStreamPlayer2D.Play()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
