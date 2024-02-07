extends Object
class_name Buffs

var buffs:Dictionary= {}

func _init(stat:String,value:float):
	buffs.merge({stat:value})
