extends Node

var mower:CharacterBody2D

# mower size, speed, mowing multiplier, automatic mowers flying like a dvd logo


func scale_player(scale:Vector2):
	mower.scale += scale

func speed_player(speed:float):
	$"../Movement".SPEED += speed

func add_mowing_efficiency(eff:float):
	pass

func add_mini_mower():
	pass
