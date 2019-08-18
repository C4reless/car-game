extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var auto0 = load("res://Bilder/auto 2.png")
var auto1 = load("res://Bilder/auto 3.png")
var auto2 = load("res://Bilder/auto 4.png")
var auto3 = load("res://Bilder/auto 5.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (len(global_variable.AktiveSpieler) <= 1):
		if (global_variable.GewinnerAuto == 0):
			texture = auto0
		if (global_variable.GewinnerAuto == 1):
			texture = auto1
		if (global_variable.GewinnerAuto == 2):
			texture = auto2
		if (global_variable.GewinnerAuto == 3):
			texture = auto3
			
		#print(texture,"das ist textur bruder")
#	pass
