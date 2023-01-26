extends Area2D
 

const rin = 0
 
export(String, FILE) var Next_Level: String = ""

func _ready():
	visible = false
	$Portal.play("Idle")
	if rin == 1:
		visible = true
	
	
func _on_Portal_body_entered(body):
	if body.is_in_group("Player") and Next_Level != "":
		get_tree().change_scene(Next_Level)

	
