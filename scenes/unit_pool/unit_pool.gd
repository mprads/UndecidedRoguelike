extends Node2D

const UNIT_SCENE := preload("res://scenes/unit/unit.tscn")

@export var filled_unit_pool_opener: TextureButton
@export var empty_unit_pool_opener: TextureButton

var units: Array[Unit] = []


func _ready() -> void:
	#TODO pull unit pool from disk once there is saving and inject into buttons from run on battle entered
	filled_unit_pool_opener.pressed.connect(_on_unit_pool_pressed.bind(filled_unit_pool_opener.unit_pool.units))
	empty_unit_pool_opener.pressed.connect(_on_unit_pool_pressed.bind(empty_unit_pool_opener.unit_pool.units))


func _on_unit_pool_pressed(pool_units: Array[UnitStats]) -> void:
	if not pool_units:
		return
		
	for unit in units:
		unit.queue_free()

	units.clear()
	
	var offset := 0
	
	for unit in pool_units:
		var new_unit := UNIT_SCENE.instantiate()
		add_child(new_unit)
		new_unit.stats = unit
		new_unit.sprite_2d.texture = unit.art
		new_unit.global_position = global_position + Vector2(offset, 0)
		offset += 200
		units.append(new_unit)
