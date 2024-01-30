extends Node

@export var mower:CharacterBody2D
@export var SPEED:int = 300

@onready var target = mower.position

func _input(_event):
	if Input.is_action_pressed("click"):
		target = mower.get_global_mouse_position()

func _physics_process(_delta):
	mower.velocity = mower.position.direction_to(target) * SPEED
	mower.look_at(target)
	if mower.position.distance_to(target) > 10:
		mower.move_and_slide()
