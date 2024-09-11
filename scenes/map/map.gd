extends Node2D

@onready var battle_button: Button = $UI/VBoxContainer/BattleButton
@onready var battle_reward_button: Button = $UI/VBoxContainer/BattleRewardButton
@onready var shop_button: Button = $UI/VBoxContainer/ShopButton
@onready var brewing_button: Button = $UI/VBoxContainer/BrewingButton

@onready var ui: CanvasLayer = $UI


func _ready() -> void:
	battle_button.pressed.connect(_on_room_selected.bind('battle'))
	battle_reward_button.pressed.connect(_on_room_selected.bind('battle_reward'))
	shop_button.pressed.connect(_on_room_selected.bind('shop'))
	brewing_button.pressed.connect(_on_room_selected.bind('brewing'))


func show_map() -> void:
	ui.show()


func hide_map() -> void:
	ui.hide()


func _on_room_selected(room: String) -> void:
	Events.map_exited.emit(room)
