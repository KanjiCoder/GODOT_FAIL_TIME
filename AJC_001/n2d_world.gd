extends Node2D

@onready var my_camera : Camera2D = get_node( "C2D_MAIN" ) as Camera2D  
var direction : Vector2 = Vector2(0,0)
var speed : float = 16.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input( event ):
	direction.x = 0
	direction.y = 0
	direction.x -= int( event.is_action_pressed( "ui_left" ) )
	direction.x += int( event.is_action_pressed( "ui_right" ) )
	direction.y -= int( event.is_action_pressed( "ui_up" ) )
	direction.y += int( event.is_action_pressed( "ui_down" ) )
	my_camera.offset.x += ( direction.x * speed )
	my_camera.offset.y += ( direction.y * speed )
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
