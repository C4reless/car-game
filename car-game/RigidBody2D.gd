extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var Speed = 25
export var Spieler = 0

var x = 0
var y = 0
var device = 0

var controler =false
var direction = Vector2(x, y)

func _input(event):
	if event is InputEventJoypadButton and event is InputEventJoypadMotion:
		controler = true
		device = event.device
		
	
	elif device == Spieler:
		pass
	
	print(event.device)
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	direction = Vector2()
	if device == 0 and controler == false:
#	x achse
		if Input.is_action_pressed("ui_right"+str(Spieler)):
			direction.x += 1
		if Input.is_action_pressed("ui_left"+str(Spieler)):
			direction.x -= 1
#	y achse
		if Input.is_action_pressed("ui_up"+str(Spieler)):
			direction.y -= 1
		if Input.is_action_pressed("ui_down"+str(Spieler)):
			direction.y += 1
	
	add_force(Vector2(),direction.normalized() * Speed)
#	pass
