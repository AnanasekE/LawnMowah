extends Label

func _ready():
	GameManager.update_points.connect(update_score)

func update_score():
	text = "Score: " + str(GameManager.points)
