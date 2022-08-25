extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gravity : int = 1000
var speed : int = 200
var jump_force : int = 600


var vel : Vector2 = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	vel.x = 0
	
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	
	vel.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") && is_on_floor():
		vel.y -= jump_force
	
	vel = move_and_slide(vel,Vector2.UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
