extends Area2D
class_name Unit

@export var stats: UnitStats : set = _set_stats

@onready var sprite_2d: Sprite2D = $Sprite2D


func _ready() -> void:
	if not stats:
		return
	
	sprite_2d.texture = stats.art


func _set_stats(value: UnitStats) -> void:
	stats = value
	
	if value == null:
		return
	
	if not is_node_ready():
		await ready
	

	stats = value.duplicate()
