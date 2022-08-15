extends Node


signal enemy_died

export(int) var MAX_HEALTH = 1
onready var health = MAX_HEALTH setget set_health

func set_health(value):
	health = clamp(value, 0, MAX_HEALTH)
	if health == 0:
		emit_signal("enemy_died")
