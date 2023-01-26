extends Area2D

export(String, FILE) var Next_Level: String = ""

func _ready():
	$Portal.play("Idle")
	
	
func _on_Portal_body_entered(body):
	if body.is_in_group("Player") and Next_Level != "":
		get_tree().change_scene(Next_Level)


