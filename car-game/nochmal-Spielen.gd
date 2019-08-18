extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Spieler1 = $"Spieler 1"
onready var Spieler2 = $"Spieler 2"
onready var Spieler3 = $"Spieler 3"
onready var Spieler4 = $"Spieler 4"

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
	
	global_variable.AktiveSpieler = []
	
	global_variable.AktiveSpieler.append(Spieler1)
	global_variable.AktiveSpieler.append(Spieler2)
	global_variable.AktiveSpieler.append(Spieler3)
	global_variable.AktiveSpieler.append(Spieler4)
	
	print(global_variable.AktiveSpieler)
	
	if (global_variable.AnzahlSpieler == 2):
		remove_child(Spieler3)
		global_variable.AktiveSpieler.erase(Spieler3)
		remove_child(Spieler4)
		global_variable.AktiveSpieler.erase(Spieler4)
	if (global_variable.AnzahlSpieler == 3):
		remove_child(Spieler4)
		global_variable.AktiveSpieler.erase(Spieler4)
		
	pass # Replace with function body.
