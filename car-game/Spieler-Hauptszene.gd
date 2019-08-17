extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Spieler3 = $"Spieler 3"
onready var Spieler4 = $"Spieler 4"

# Called when the node enters the scene tree for the first time.
func _ready():
	if (global_variable.AnzahlSpieler == 2):
		Spieler3.hide()
		Spieler4.hide()
	if (global_variable.AnzahlSpieler == 3):
		Spieler4.hide()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
