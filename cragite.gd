extends KinematicBody2D


const SPEED = 150
const GRAVITY = 10
const JUMP_POWER = -750
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var on_ground = false


func _physics_process(delta):
	
	
	velocity.y += GRAVITY
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			velocity.y = JUMP_POWER
			get_node("../jump").play()
			
			
	else:
		on_ground = false
		
	
	
	if Input.is_action_just_released("ui_up") && velocity.y <0:
		velocity.y = 0
		
		
			
	
		
	
		
	
	
	
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	else:
		velocity.x = 0
	
		
	
	
	
	velocity = move_and_slide(velocity, FLOOR)
	
	
		
