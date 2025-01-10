extends Control

@export var anim = AnimationPlayer
@export var autoplay : bool = false


func _on_anim_intro_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://Interface/game_menu.tscn")
