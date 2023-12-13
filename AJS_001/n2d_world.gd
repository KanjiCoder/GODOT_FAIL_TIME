extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var goose : Sprite2D =( get_node( "S2D_GOOSE" ))
	goose.offset.x -= int( Input.is_action_pressed( "ui_left" ) )
	goose.offset.x += int( Input.is_action_pressed( "ui_right" ) )
	goose.offset.y -= int( Input.is_action_pressed( "ui_up" ) )
	goose.offset.y += int( Input.is_action_pressed( "ui_down" ) )
