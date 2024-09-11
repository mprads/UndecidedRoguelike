extends Node

#Battle Events
signal battle_exited

#Battle Reward Events
signal battle_reward_exited

#Shop Events
signal shop_exited

#Brewing Events
signal brewing_exited

#Map Events
#TODO replace with room
signal map_exited(room: String)
