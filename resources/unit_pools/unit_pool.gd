extends Resource
class_name UnitPool

signal unit_pool_sized_changed(units_amount: int)

@export var units: Array[UnitStats] = []


func add_unit(unit: UnitStats) -> void:
	if not unit:
		return
	
	unit = unit.duplicate()
	units.append(unit)
	unit_pool_sized_changed.emit(units.size())


func remove_unit(unit: UnitStats) -> void:
	if not unit:
		return

	units.erase(unit)
	unit_pool_sized_changed.emit(units.size())
