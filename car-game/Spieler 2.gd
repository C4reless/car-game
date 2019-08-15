extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var xSpeed = 500
export var ySpeed = 500

var x = 0
var y = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2(x, y)
#	x achse
	if Input.is_action_pressed("ui_d"):
		velocity.x += xSpeed
	if Input.is_action_pressed("ui_a"):
		velocity.x -= xSpeed
#	y achse
	if Input.is_action_pressed("ui_w"):
		velocity.y -= ySpeed
	if Input.is_action_pressed("ui_s"):
		velocity.y += ySpeed
		
	move_and_slide(velocity)
#	pass
