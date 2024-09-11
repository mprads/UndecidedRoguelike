class_name ItemConfig

enum KEYS {
	#components
	WATER,
	HERB,
	ACID,
	VIAL,
	#potions
	RED_POTION,
	GREEN_POTION,
}

const BREWABLE_ITEM_KEYS: Array[KEYS] = [
	KEYS.RED_POTION,
	KEYS.GREEN_POTION,
]

const ITEM_RESOURCE_PATHS := {
	#components
	KEYS.WATER: "res://resources/items/water.tres",
	KEYS.HERB: "res://resources/items/herb.tres",
	#potions
	KEYS.RED_POTION: "res://resources/items/red_potion.tres",
	KEYS.GREEN_POTION: "res://resources/items/green_potion.tres",
}

const BREWING_BLUEPRINT_RESOURCE_PATHS := {
	KEYS.RED_POTION: "res://resources/brewable_blueprints/red_potion_blueprint.tres",
	KEYS.GREEN_POTION: "res://resources/brewable_blueprints/green_potion_blueprint.tres",
}


static func get_item_resource(key: KEYS) -> Item:
	return load(ITEM_RESOURCE_PATHS.get(key))


static func get_brewable_blueprint(key: KEYS) -> BrewableBlueprint:
	return load(BREWING_BLUEPRINT_RESOURCE_PATHS.get(key))
