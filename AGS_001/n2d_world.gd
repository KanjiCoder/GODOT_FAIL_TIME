extends Node2D

var packed_scene_resources ={
	"m_goose" : preload( "res://SPRITES/s2d_goose.tscn" )
}

# Called when the node enters the scene tree for the first time.
func _ready():
	var psr_goose : PackedScene = packed_scene_resources[ "m_goose" ]
	## self.add_child( scene_instance ) <-- WRONG
	## var s2d_goose = psr_goose.instance( )  <-- WRONG VERSION OF GODOT ?
	var s2d_goose : Sprite2D  = psr_goose.instantiate( )
	self.add_child( s2d_goose )
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
