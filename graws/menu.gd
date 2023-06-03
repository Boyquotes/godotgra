extends Control


# Called when the node enters the scene tree for the first time.
func _ready():	
	$VBoxContainer/StartButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("altf4"):
		get_tree().quit()
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://mapy/mapa_3.tscn")

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://mapy/mapa_3.tscn")


func _on_exit_button_pressed():
	get_tree().quit()
