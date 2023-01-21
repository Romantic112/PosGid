extends KinematicBody2D

var speed = 200
var jump = 400
var graviti = 700
var vel = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y = -jump
	elif Input.is_action_pressed("ui_right"):
		vel.x = speed
	elif Input.is_action_pressed("ui_left"):
		vel.x = -speed
	else:
		vel.x = 0
	vel.y += graviti * delta
	vel = move_and_slide(vel, Vector2.UP)
