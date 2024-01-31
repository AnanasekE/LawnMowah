extends Label

@onready var gm:GameManager = $"/root/GameManager"


func _ready():
	gm.update_points.connect(update_score)

func update_score():
	text = "Score: " + str(gm.points)
