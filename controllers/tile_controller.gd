extends Node2D

@export var ground_layer: TileMapLayer
@export var mouse_layer: TileMapLayer

var last_mouse_pos: Vector2


func _process(delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	
	if mouse_pos == last_mouse_pos:
		return 
	
	last_mouse_pos = mouse_pos
	_update_mouse_hover(mouse_pos)


func _update_mouse_hover(mouse_pos: Vector2) -> void:
	var new_pos = mouse_layer.local_to_map(mouse_pos - mouse_layer.global_position)
	mouse_layer.clear()
	mouse_layer.set_cell(new_pos, 2, Vector2i(0, 0))
