extends Area2D

signal died

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		call_deferred("restart_level")
		
func restart_level():
	died.emit()
