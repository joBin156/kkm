extends Node2D

@export var animation_player : AnimationPlayer
@export var autoplay : bool = false
var next_scene = preload("res://map/tondo/Tondo.tscn")

func _ready():
	assert(next_scene)

func _init(event):
	if event.is_action_pressed("next") and not animation_player.is_playing():
		animation_player.play()

func pause():
	if autoplay == false:
		animation_player.pause()

func change_scene():
	pass


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_packed(next_scene)
