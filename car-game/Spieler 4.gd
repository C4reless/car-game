extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
export var Speed = 2
export var Spieler = 0

var auto0 = load("res://Bilder/auto 2.png")
var auto1 = load("res://Bilder/auto 3.png")
var auto2 = load("res://Bilder/auto 4.png")
var auto3 = load("res://Bilder/auto 5.png")
var autolevel = load("res://Bilder/auto.png")

onready var sprite = $"auto 2"

var moving = false

onready var timer = $Timer

var x = 0
var y = 0
var device = 0

var controler =false
var velocity = Vector2(x, y)
var direction = Vector2(x, y)

func _input(event):
	if event is InputEventJoypadButton and event is InputEventJoypadMotion:
		controler = true
		device = event.device
		
	
	elif device == Spieler:
		pass
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	if (Spieler == 0 and global_variable.globlevel == false):
		sprite.texture = auto0
	elif (Spieler == 1 and global_variable.globlevel == false):
		sprite.texture = auto1
	elif (Spieler == 2 and global_variable.globlevel == false):
		sprite.texture = auto2
	elif (Spieler == 3 and global_variable.globlevel == false):
		sprite.texture = auto3
	elif (Spieler == 0 and global_variable.globlevel == true):
			sprite.texture = autolevel
		 # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	direction = Vector2()
	if device == 0 and controler == false:
#	x achse
		if Input.is_action_pressed("ui_right"+str(Spieler)):
			direction.x += 1
			timer.stop()
			moving = true
		if Input.is_action_pressed("ui_left"+str(Spieler)):
			direction.x -= 1
			timer.stop()
			moving = true
#	y achse
		if Input.is_action_pressed("ui_up"+str(Spieler)):
			direction.y -= 1
			timer.stop()
			moving = true
		if Input.is_action_pressed("ui_down"+str(Spieler)):
			direction.y += 1
			timer.stop()
			moving = true
	elif controler == true:
		#x achse
		if Input.is_action_pressed("ui_right"+str(Spieler)):
			direction.x += 1
			timer.stop()
			moving = true
		if Input.is_action_pressed("ui_left"+str(Spieler)):
			direction.x -= 1
			timer.stop()
			moving = true
#	y achse
		if Input.is_action_pressed("ui_up"+str(Spieler)):
			direction.y -= 1
			timer.stop()
			moving = true
		if Input.is_action_pressed("ui_down"+str(Spieler)):
			direction.y += 1
			timer.stop()
			moving = true
		
	#x achse
	if Input.is_action_just_released("ui_right"+str(Spieler)):
		direction.x += 1
		timer.start(0.5)
	if Input.is_action_just_released("ui_left"+str(Spieler)):
		direction.x -= 1
		timer.start(0.5)
#	y achse
	if Input.is_action_just_released("ui_up"+str(Spieler)):
		direction.y -= 1
		timer.start(0.5)
	if Input.is_action_just_released("ui_down"+str(Spieler)):
		direction.y += 1
		timer.start(0.5)
		
	if (moving == true ):
		velocity += direction.normalized() * Speed
		move_and_slide(velocity)
	if (moving == false ):
		velocity *= 0.99
	
	rotation = velocity.angle()
	
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		print("Collided with: ", collision.collider.name,velocity,collision.collider.velocity)
		var speed = velocity-collision.collider.velocity
		
		velocity = (collision.collider.velocity - velocity) * 0.9
		
		
		"""if (collision.collider.velocity > velocity):
			addingSpeed(speed*0.9)
		elif (collision.collider.velocity < velocity):
			collision.collider.addingSpeed(speed*0.9)
		elif (collision.collider.velocity == velocity):
			pass"""
		
		
#	pass
func addingSpeed(addedvelocity):
	velocity =addedvelocity
	pass


func _on_Timer_timeout():
	#wird aufgerufen wenn timer abgelaufen
	#to do kontrolle x/y kontrolle setzen
	
	moving = false
	direction.x = 0
	direction.y = 0
	pass # Replace with function body.

func die():
	velocity = Vector2(0,0)
	
	var tween1 = Tween.new()
	add_child(tween1)
	tween1.interpolate_property(self,"rotation",rotation,rotation+720,1.5,Tween.TRANS_CUBIC,Tween.EASE_IN_OUT)
	var tween = Tween.new()
	add_child(tween)
	tween.interpolate_property(self,"scale",scale,Vector2(0,0),1.5,Tween.TRANS_CUBIC,Tween.EASE_IN_OUT)
	
	tween.start() and tween1.start()
	
	pass