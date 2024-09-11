extends Resource
class_name UnitPool

@export var unit_pool: Array[UnitStats] = []


func add_unit(unit: UnitStats) -> void:
	if not unit:
		return
	
	unit = unit.duplicate()
	unit_pool.append(unit)


func remove_unit(unit: UnitStats) -> void:
	if not unit:
		return

	unit_pool.erase(unit)
