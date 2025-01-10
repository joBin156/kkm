extends CanvasLayer

var Tondo = preload("res://map/new map/tondo/tondo.tscn")
var Norttondo = preload("res://map/new map/tobacoor/nort/NT.tscn")
var IGame = preload("res://map/startingScene/Igame.tscn")
var Game = preload("res://map/startingScene/game.tscn")
var Bacoor = preload("res://map/new map/bacoor/bacoor_city.tscn")
var toBacoor = preload("res://map/new map/newtobacoor/tobacoor.tscn")

func ChangeStage(stage_path, x, y):
	var stage = stage_path.instantiate()
	get_tree().get_root().get_child(2).queue_free()
	get_tree().get_root().add_child(stage)
	if stage.has_node("Player"):
		stage.get_node("Player").position = Vector2(x, y)
