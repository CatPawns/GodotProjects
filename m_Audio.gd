extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var my_timer = 1
var m_currentTimer = 0.0
var bpm = 120
var bar=4
var m_label
# Called when the node enters the scene tree for the first time.
func _ready():
	var CorrectSound = preload("res://click1.wav")
	print(CorrectSound)
	stream = CorrectSound
	m_label = get_node("Label")
	m_label.text = "adsa"
	pass # Replace with function body.

var barN = 0
func _physics_process(delta):
	m_currentTimer+= delta
	var beat = 60.0/bpm
	m_label.text = str("beat" ,barN%bar+1,"/", beat)
	print(m_currentTimer)
	if m_currentTimer >= beat:
		barN+=1
		m_currentTimer = 0
		play()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
