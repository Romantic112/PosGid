extends Area2D
var key = 0

func _ready():
	pass


func _on_Key_body_entered(body):
	body.name == "Player"
	key += 1
	queue_free()
	pass 
