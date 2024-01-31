extends Node

var mower:CharacterBody2D

# mower size, speed, mowing multiplier, automatic mowers flying like a dvd logo
@onready var gm:GameManager = $/root/GameManager

func _ready():
	$/root/Signals.upgrade_player_size.connect(scale_player)

func scale_player(scale:Vector2):
	mower.scale += scale

func speed_player(speed:float):
	$"../Movement".SPEED += speed

func add_mowing_efficiency(eff:float):
	gm.point_multiplier += eff

func add_mini_mower():
	pass # TODO
