extends Area2D

export(int) var damage = 1


func _on_HitBox_area_entered(hurtbox):
	hurtbox.emit_signal("hit", damage)
