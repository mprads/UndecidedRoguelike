extends Node2D

@onready var button: Button = $UI/VBoxContainer/Button


func _ready() -> void:
	button.pressed.connect(Events.battle_exited.emit)
