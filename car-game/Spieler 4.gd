extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
export var xSpeed = 60
export var ySpeed = 60
export var Spieler = 0

var x = 0
var y = 0
var device = 0

var controler =false
var velocity = Vector2(x, y)

func _input(event):
	if event is InputEventJoypadButton and event is InputEventJoypadMotion:
		controler = true
		device = event.device
		
	if device == 0 and controler == false:
#	x achse
		if Input.is_action_pressed("ui_right"+str(Spieler)):
			velocity.x += xSpeed
		if Input.is_action_pressed("ui_left"+str(Spieler)):
			velocity.x -= xSpeed
#	y achse
		if Input.is_action_pressed("ui_up"+str(Spieler)):
			velocity.y -= ySpeed
		if Input.is_action_pressed("ui_down"+str(Spieler)):
			velocity.y += ySpeed
	elif device == Spieler:
		pass
	
	print(event.device)
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move_and_slide(velocity)
	velocity *= 0.9
#	pass
