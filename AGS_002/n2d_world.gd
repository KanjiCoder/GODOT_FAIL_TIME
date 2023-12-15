extends Node2D

var countdown_to_goose_spawn = 0 
var psr : PackedScene = preload( "res://s2d_goose.tscn" )

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
## func _process(delta):
func _physics_process( _delta ) :
	countdown_to_goose_spawn -= 1
	if( countdown_to_goose_spawn <= 0 ) :
		countdown_to_goose_spawn =( 60 )
		var s2d_goose =( psr.instantiate() )
		self.add_child( s2d_goose )
		
	
	
	
	
	
	
	
	
