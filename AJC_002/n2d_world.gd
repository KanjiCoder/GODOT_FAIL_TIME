extends Node2D

## @onready var my_camera : Camera2D = get_node( "C2D_MAIN" ) as Camera2D  

var direction : Vector2 = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direction.x = 0 
	direction.y = 0 
	direction.x -=int( Input.is_action_pressed( "ui_left" ) )
	direction.x +=int( Input.is_action_pressed( "ui_right" ) )
	direction.y -=int( Input.is_action_pressed( "ui_up" ) )
	direction.y +=int( Input.is_action_pressed( "ui_down" ) )
	var cam : Camera2D =( get_node( "C2D_CAMERA" ) as Camera2D )
	cam.offset.x +=( direction.x )
	cam.offset.y +=( direction.y )
	
	
	
	
	
	
	
	
	
