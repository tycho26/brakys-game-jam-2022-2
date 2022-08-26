extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity = 200

onready var player_target = get_node_or_null("../../Player")
# onready print(typeof(player_target))


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var target_vel = global_position.direction_to(player_target.global_position)
	move_and_slide(Vector2(target_vel.x * velocity,0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
