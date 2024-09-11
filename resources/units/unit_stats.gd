extends Stats
class_name UnitStats

@export var name: String
@export var max_liquid: int

var liquid: int : set = set_liquid


func set_liquid(value : int) -> void:
	liquid = clampi(value, 0, max_liquid)
	stats_changed.emit()


func refill(amount: int) -> void:
	liquid += amount
