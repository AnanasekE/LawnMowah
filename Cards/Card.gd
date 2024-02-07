extends Node
class_name Card

var card_name:String
var buff:Dictionary
var nerf:Dictionary

enum Statistics {MOWING_EFFICIENCY,MOWER_SPEED,MOWER_SCALE}

func _init():
	var type:int = randi_range(0,2)
	if type == 0:
		buff[Statistics.MOWING_EFFICIENCY] = randi_range(0,50)
	if type == 1:
		buff[Statistics.MOWER_SCALE] = randi_range(0,50)
	if type == 2:
		buff[Statistics.MOWER_SPEED] = randi_range(0,50)
	
	var type2:int = randi_range(0,2)
	if type2 == 0:
		nerf[Statistics.MOWING_EFFICIENCY] = randi_range(0,50)
	if type2 == 1:
		nerf[Statistics.MOWER_SCALE] = randi_range(0,50)
	if type2 == 2:
		nerf[Statistics.MOWER_SPEED] = randi_range(0,50)

func get_buff_stat():
	return buff.keys()[0]
func get_buff_value():
	return buff[get_buff_stat()]

func get_nerf_stat():
	return nerf.keys()[0]	
func get_nerf_value():
	return nerf[get_nerf_stat()]
