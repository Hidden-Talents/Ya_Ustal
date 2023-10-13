extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"`

# Called when the node enters the scene tree for the first time.
func _ready():
	text = "Max Health: " + String(get_parent().get_node("Atributes")._max_health) +  "\nHealth: " + String(get_parent().get_node("Atributes")._health) + "\nDamage: " + String(get_parent().get_node("Atributes")._damage) + "\nSpeed: " + String(get_parent().get_node("Atributes")._speed) + "\nRange: " + String(get_parent().get_node("Atributes")._range)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
