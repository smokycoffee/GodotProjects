extends Control

var PlayerStats = ResourceLoader.PlayerStats

onready var full = $Full

# Called when the node enters the scene tree for the first time.
func _ready():
	PlayerStats.connect("player_health_changed", self, "on_player_health_changed")

func on_player_health_changed(value):
	full.rect_size.x = value * 5 + 1
