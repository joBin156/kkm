extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == ("Player"):
		StageManager.ChangeStage(StageManager.toBacoor,42, 354)
