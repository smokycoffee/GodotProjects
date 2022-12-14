extends HBoxContainer


var PlayerStats = ResourceLoader.PlayerStats

onready var label = $Label

func _ready():
	PlayerStats.connect("player_missiles_changed", self, "_on_player_missiles_changed")
	label.text = str(PlayerStats.max_missiles)

func _on_player_missiles_changed(amount):
	label.text = str(amount)
