extends CharacterBody2D


func _on_lawa_timer_timeout():
	velocity.y = +1 


func _on_lawa_area_2d_body_entered(body):
	pass 
