extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_NochmalSpielen_pressed():
	get_tree().change_scene("res://Spieler.tscn")
	global_variable.AnzahlSpieler = global_variable.AnzahlLeztesSpiel
	global_variable.GameOver = false
	pass # Replace with function body.
