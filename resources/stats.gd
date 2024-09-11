extends Resource
class_name Stats

signal stats_changed

@export var max_health: int
@export var base_movement: int
@export var art: Texture2D

var health : int : set = set_health


func set_health(value : int) -> void:
	health = clampi(value, 0, max_health)
	stats_changed.emit()


func take_damage(damage: int) -> void:
	if damage <= 0:
		return
	
	health -= damage


func heal(amount: int) -> void:
	health += amount
