extends Node2D

enum Turn { Player1, Player2 }
var _count 
var _damage
var _max_health
var _speed
var _range
var _owner
var _health

func _ready():
	_owner = int(rand_range(-1, 2))
	if _owner == 0:
		_owner = Turn.Player1
	else:
		_owner = Turn.Player2 
	_count = int(rand_range(10, 20))
	_damage = int(rand_range(4, 8))
	_max_health = int(rand_range(20, 30))
	_speed = int(rand_range(3,4))
	_range = int(rand_range(1,2))
	_health = _max_health
func _get_damage(damage, count):
	_health -= damage * count
	while _health <= 0:
		_count -= 1
		_health += _max_health
	get_parent().get_node("count1").set_text(String(_count))
	get_parent().get_node("ats").text = "Max Health: " + String(get_parent().get_node("Atributes")._max_health) +  "\nHealth: " + String(get_parent().get_node("Atributes")._health) + "\nDamage: " + String(get_parent().get_node("Atributes")._damage) + "\nSpeed: " + String(get_parent().get_node("Atributes")._speed) + "\nRange: " + String(get_parent().get_node("Atributes")._range)
