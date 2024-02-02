extends Node

var mower:CharacterBody2D
# mower size, speed, mowing multiplier, automatic mowers flying like a dvd logo

func _ready():
	Signals.upgrade_player_size.connect(scale_player)
	Signals.upgrade_player_speed.connect(speed_player)
	Signals.upgrade_player_mowing_efficiency.connect(add_mowing_efficiency)

func scale_player(scale:Vector2):
	mower.scale += scale

func speed_player(speed:float):
	$"../Movement".SPEED += speed

func add_mowing_efficiency(eff:float):
	GameManager.point_multiplier += eff

func add_mini_mower():
	pass # TODO
