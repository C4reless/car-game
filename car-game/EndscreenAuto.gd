extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(texture,"das ist textur2 bruder")
	if (len(global_variable.AktiveSpieler) >= 1):
		texture = global_variable.AktiveSpieler[0].texture
		print(texture,"das ist textur bruder")
#	pass
