extends Control


@export var anim = AnimationPlayer
@export var autoplay : bool = false

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://map/startingScene/game.tscn")
