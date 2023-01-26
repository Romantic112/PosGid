extends KinematicBody2D

var go_left = true

var vel = Vector2()
var speed = 150

func _process(delta):
	vel.x = -speed
	
	if go_left:
		vel.x = -speed
	else:
		vel.x = speed
	vel = move_and_slide(vel, Vector2.UP)
	
	
	
	if   $RayCast2D.is_colliding() and is_on_floor() :
		go_left = !go_left
		scale.x = -scale.x


func _on_Kill_body_entered(body):
	get_tree().reload_current_scene()

func _on_NoKill_body_entered(body):
	queue_free()
