extends CanvasLayer
var Coin = 0
func printgold():
	$Label.text = "" + str(Coin)
	
	
func takeCoin():
	Coin += 1
	printgold()
func _ready():
	printgold()
