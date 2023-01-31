extends Area2D


func _ready():
	pass


func _on_Light_body_entered(body):
	body.name = "Player"
	queue_free()
