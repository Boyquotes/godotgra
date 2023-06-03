extends CharacterBody2D

func  _ready():
	pass
	
func _on_przeciwnik_area_2d_2_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
		#print("cos")
		#print(body)
		if body.has_method("test1"):
			body.test1()
		
func _on_timer_timeout():
	print("timer ",$przeciwnikArea2D2/przeciwnikAreaCollisionShape2D.disabled)
	$przeciwnikArea2D2/przeciwnikAreaCollisionShape2D.disabled = not $przeciwnikArea2D2/przeciwnikAreaCollisionShape2D.disabled
	print("time ",$Sprite2D.visible)
	$Sprite2D.visible = not $Sprite2D.visible
