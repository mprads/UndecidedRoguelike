extends TextureButton

@export var counter: Label
@export var unit_pool: UnitPool : set = set_unit_pool


func set_unit_pool(new_pool: UnitPool) -> void:
	unit_pool = new_pool
	
	if not unit_pool.unit_pool_sized_changed.is_connected(_on_unit_pool_size_changed):
		unit_pool.unit_pool_sized_changed.connect(_on_unit_pool_size_changed)
		_on_unit_pool_size_changed(unit_pool.units.size())
	

func _on_unit_pool_size_changed(amount: int) -> void:
	if not is_node_ready():
		await ready
	
	printt(amount, str(amount))
	counter.text = str(amount)
