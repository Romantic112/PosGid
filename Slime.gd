extends KinematicBody2D

var go_left = true

var graviti = 10
var vel = Vector2()
var speed = 100

func _ready():
	pass # Replace with function body.

func _process(delta):
	vel.x = -speed
	
	if go_left:
		vel.x = -speed
	else:
		vel.x = speed
	
	
	vel.y += graviti
	
	vel = move_and_slide(vel, Vector2.UP)
	if not $RayCast2D.is_colliding() and is_on_floor():
		go_left = !go_left
		scale.x = -scale.x




func _on_Area2D_body_entered(body):
	get_tree().reload_current_scene()


func _on_Area2D2_body_entered(body):
	queue_free()
