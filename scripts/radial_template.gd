extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()
func show_and_hide():
	if Input.is_action_just_pressed("Menu"):
		self.show()
	if Input.is_action_just_released("Menu"):
		self.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	show_and_hide()
