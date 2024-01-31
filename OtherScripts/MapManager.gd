extends Node

# 287 161
# 46207
var pattern:TileMapPattern
@onready var tilemap: TileMap = $"../GrassMap"
@onready var gm:GameManager = $/root/GameManager
var all_cells_coords:Array[Vector2i]

func _ready():
	# this is awful - do not do this ever unless you absolutely have to
	for i in range(0,287):
		for j in range(0,161):
			all_cells_coords.append(Vector2i(i,j))
	
	gm.reset_map.connect(fill_map)
	pattern = tilemap.get_pattern(0,all_cells_coords)

func fill_map():
	tilemap.set_pattern(0,Vector2(0,0),pattern)
	
