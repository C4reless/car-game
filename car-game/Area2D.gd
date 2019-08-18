extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_exited(body):
	print(body.name)
	
	if (global_variable.AnzahlSpieler == 1):
		global_variable.GewinnerAuto = global_variable.AktiveSpieler[0].Spieler
		global_variable.GameOver = true
	
	if (global_variable.GameOver == false):
		body.die()
		print(body.name)
	pass # Replace with function body.
