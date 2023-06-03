extends CharacterBody2D


const SPEED = 200.0
var direction = -1

func _physics_process(delta):
	if direction:
		velocity.x = direction * SPEED
	move_and_slide()
	if is_on_floor():
		print("on floor!!!")
	if is_on_ceiling():
		print("on ceiling!!!")
	if is_on_wall():
		#print("wall")
		#zmiana_kierunku()
		pass

func zmiana_kierunku():
	print("aktualny kierunek ", direction)
	if direction == 1:
		direction = -1
	elif direction == -1:
		direction = 1
	else:
		print("niema")
	print("nowy kierunek ", direction)
	
func _on_platforma_area_entered(area):
	print("AREA ODBICIE ", area.name, direction)
	zmiana_kierunku()
