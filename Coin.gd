extends Area2D

onready var UI = get_node("res://UI.gd")

func _on_Coin_body_entered(body):
	if body.name == "Player":
		
		queue_free()
		
