extends CharacterBody2D

const SPEED = 600
const JUMP_VELOCITY = -700.0
const FALLSPEED = 20
var direction = 1

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta + FALLSPEED
		
	#if is_on_wall(): 
		#print("na scianie")
		
	if Input.is_action_just_pressed("ui_accept"): #and is_on_floor()
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		elif is_on_wall() && Input.is_action_pressed("left"):
			velocity.y = JUMP_VELOCITY
			velocity.x = -1 * SPEED
			print("kaczka1")
		elif is_on_wall() && Input.is_action_pressed("right"):
			velocity.y = JUMP_VELOCITY
			velocity.x = 1 * SPEED
			print("kaczka2")
				
	var cdirection = Input.get_axis("left", "right")
	if cdirection ==1:
		#$AnimatedSprite2D.flip_h=false
		direction=1
	elif cdirection ==-1:
		#$AnimatedSprite2D.flip_h=true
		direction=-1
	
	if Input.is_action_just_pressed("reset"):
		get_tree().change_scene_to_file("res://mapy/mapa_3.tscn")
	if Input.is_action_just_pressed("altf4"):
		get_tree().quit()
	
	if direction:
		#print(direction)
		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
func test1():
	print("usuniecie postaci")
	queue_free()
	get_tree().change_scene_to_file("res://mapy/mapa_3.tscn")

