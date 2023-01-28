extends KinematicBody2D

var speed = 200
var jump = 400
var graviti = 700
var vel = Vector2()
var jump_max = 2
var jump_count = 0

var coin = 0
	
	

	
func _physics_process(delta):
	
	if vel.y >= 1500:
		get_tree().reload_current_scene()
	
	if Input.is_action_pressed("ui_right"):
		vel.x = speed
		$Icon.play("Run")
		$Icon.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		vel.x = -speed
		$Icon.play("Run")
		$Icon.flip_h = true
	else:
		vel.x = 0
		$Icon.play("Idle")
	if is_on_floor() or is_on_wall() and jump_count != 0:
		jump_count = 0
	if jump_count<jump_max:
		if Input.is_action_just_pressed("ui_up"):
			vel.y = -jump
			jump_count += 1
			#$Icon.play("Jump")
	vel.y += graviti * delta
	vel = move_and_slide(vel, Vector2.UP)


func _on_Area2D_body_exited(body):
	get_tree().reload_current_scene()






func _on_Area2D_body_entered(body):
	get_tree().reload_current_scene()


func _on_Key_body_entered(body):
	$Label.text = "1"

	
	



func _on_Coin_body_entered(body):
	coin += 1
	$Lable.text = "" + str(coin)
	


