extends Button

@export var BuffLabel:Label
@export var NerfLabel:Label

var buff
var nerf
var card:Card
@onready var card_box:Control = %CardBox

func send_upgrades():
	# activate signals
	# hide cards
	Signals.upgrade_player_mowing_efficiency.emit(0)
	Signals.upgrade_player_speed.emit(0)
	Signals.upgrade_player_size.emit(0)
	card_box.hide()

func _on_pressed():
	pass
func reroll():
	card = Card.new()
	
	BuffLabel.text = str(card.get_buff_stat()) +": +"+ str(card.get_buff_value())
	NerfLabel.text = str(card.get_nerf_stat()) +": +"+ str(card.get_nerf_value())
	
	
