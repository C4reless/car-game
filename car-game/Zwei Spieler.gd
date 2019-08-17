extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var AnzahlSpieler = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Zwei_Spieler_pressed():
	get_tree().change_scene("res://Spieler.tscn")
	global_variable.AnzahlSpieler = 2
	pass # Replace with function body.
