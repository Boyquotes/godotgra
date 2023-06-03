extends CharacterBody2D

func _on_area_2d_body_entered(body):
	if "gracz" in body.name:
		get_tree().change_scene_to_file("res://mapy/mapa_1.tscn")
