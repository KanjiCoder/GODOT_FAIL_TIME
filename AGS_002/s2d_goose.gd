extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	offset.x += randf_range(0.0,0.2)
	offset.y += randf_range(0.0,0.2)
	if( offset.x > 512 || offset.y > 512 ) :
		self.queue_free()
	
 
